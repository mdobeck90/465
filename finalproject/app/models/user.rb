class User < ActiveRecord::Base
  has_many :breaches
  has_many :targets, :through => :breaches
  has_many :inverse_breaches, :class_name => "Breaches", :foreign_key => "target_id"
  has_many :inverse_targets, :through => :inverse_breaches, :source => :user

  has_many :operatives

  validates :zeroday, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :o_contract, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :honeypot, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :firewall, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  has_secure_password
  validates_confirmation_of :password
end
