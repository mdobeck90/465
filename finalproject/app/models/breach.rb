class Breach < ActiveRecord::Base
  belongs_to :user
  belongs_to :breach, :class_name => "User"


  def calculate_breach_outcome
    honeypot_rating = User.find(self.target_id).active_honeypot + .0
    defense_rating = User.find(self.target_id).active_firewall + .0
  
    honey_chance = rand(0.0..honeypot_rating)/honeypot_rating
    defense_chance = rand(0.0..defense_rating)/defense_rating   
    if honey_chance > defense_chance
      @honeytrap = true
    else
      @honeytrap = false
    end

    if @honeytrap == true
      if honey_chance > rand(0.0..1.0)
        @repel = true
      else
        @repel = false
      end
    elsif @honeytrap == false
      if defense_chance > rand(0.0..1.0)
        @repel = true
      else
        @repel = false
      end
    end
  end
end
