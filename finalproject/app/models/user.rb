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

  def check_for_breaches
    #find where cur_user was target of breaches
    breaches_by_enemies = Breach.where(target_id: self.id)
  
    breaches_by_enemies.each do |breach|
      if breach.reward_collected != true
        #if already paid the stolen goods, do nothing
        puts breach.reward_collected
        breach.update(reward_collected: true)
        puts breach.reward_collected
      else
        #pay out the stolen goods
      end
        puts breach.reward_collected
    end
  end

  end
