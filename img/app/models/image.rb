class Image < ActiveRecord::Base
  
  has_many :ImageUsers
  has_many :tags
  has_many :users, :through => :ImageUsers
  accepts_nested_attributes_for :ImageUsers

  belongs_to :user

  def generate_filename
    chars = [('a'..'z'), (1..9)].map { |i| i.to_a }.flatten 
    new_filename = (1..6).map { chars[rand(chars.length)] }.join
    new_filename = "#{new_filename}" + ".jpg"
    self.filename = new_filename
  end
  
  def users_without_access
    users_wo_access = User.all - self.users
    users_wo_access.delete(self.user)
    
    users_wo_access.map { |user| ["#{user.name} " + "(#{user.email})", user.id] }
  end

end
