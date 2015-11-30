class User < ActiveRecord::Base

  has_many :ImageUsers  
  has_many :images, :through => :ImageUsers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
