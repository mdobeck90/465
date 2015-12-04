class Breach < ActiveRecord::Base
  belongs_to :user
  belongs_to :breach, :class_name => "User"
end
