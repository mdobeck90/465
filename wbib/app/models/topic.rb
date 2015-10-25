class Topic < ActiveRecord::Base

  has_many :references, dependent: :destroy

  validates :title, :description, presence: true

end
