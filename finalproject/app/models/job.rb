class Job < ActiveRecord::Base

  def reward
    job_rewards = {:firewall => rand(0..4), :honeypot => rand(0..1), :o_contract => rand(0..1), :zeroday => rand(0..1), :cash => rand(0..500) }
  end  

end
