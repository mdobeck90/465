class Breach < ActiveRecord::Base
  belongs_to :user
  belongs_to :breach, :class_name => "User"

  def calculate_breach_outcome
    honeypot_activate = User.find(self.target_id).active_honeypot
    defense_rating = User.find(self.target_id).active_firewall
    @zero_or_honey = defense_rating/rand(1..defense_rating)
  end
end
