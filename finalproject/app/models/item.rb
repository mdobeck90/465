class Item < ActiveRecord::Base
  belongs_to :user

  validates :zeroday, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :o_contract, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :honeypot, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :firewall, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
