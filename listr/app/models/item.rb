class Item < ActiveRecord::Base
 
  attr_accessible :name, :parent_id
  belongs_to :list

end
