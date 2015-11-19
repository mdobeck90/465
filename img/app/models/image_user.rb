class ImageUser < ActiveRecord::Base

  belongs_to :User
  belongs_to :Image

end
