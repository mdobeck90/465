class Reference < ActiveRecord::Base

  belongs_to :topic
  
  validates :url, :description, presence: true

end
