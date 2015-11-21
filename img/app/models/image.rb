class Image < ActiveRecord::Base
  
  has_many :ImageUsers
  has_many :Tags
  has_many :Users, :through => :ImageUsers

  belongs_to :User

  def generate_filename
    chars = [('a'..'z'), (1..99)].map { |i| i.to_a }.flatten 
    filename = (1..6).map {chars[rand(chars.length)]}.join
  end
  
end
