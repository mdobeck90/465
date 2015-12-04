class User < ActiveRecord::Base
  has_many :breaches
  has_many :targets, :through => :breaches
end
