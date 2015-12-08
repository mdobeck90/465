class User < ActiveRecord::Base
  has_many :breaches
  has_many :targets, :through => :breaches
  has_many :inverse_breaches, :class_name => "Breaches", :foreign_key => "target_id"
  has_many :inverse_targets, :through => :inverse_breaches, :source => :user

  has_many :operatives

  has_secure_password
  validates_confirmation_of :password
  validates :name, uniqueness: true

  validates :firewall, numericality: { :greater_than_or_equal_to => 0 }
  validates :zeroday, numericality: { :greater_than_or_equal_to => 0 }
  validates :honeypot, numericality: { :greater_than_or_equal_to => 0 }
  validates :o_contract, numericality: { :greater_than_or_equal_to => 0 }

  end
