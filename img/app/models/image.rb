class Image < ActiveRecord::Base
  
  has_many :imageusers
  has_many :tags
  has_many :users, :through => :ImageUsers

  before_save :generate_filename

  belongs_to :user

  def generate_filename
    chars = [('a'..'z'), (1..99)].map { |i| i.to_a }.flatten 
    new_filename = (1..6).map { chars[rand(chars.length)] }.join
    new_filename = "#{new_filename}" + ".jpg"
    self.filename = new_filename
  end

end
