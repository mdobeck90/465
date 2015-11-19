class Image < ActiveRecord::Base
  
  has_many :ImageUsers
  has_many :Tags
  has_many :Images, :through => :ImageUsers

  belongs_to :User
  
end
