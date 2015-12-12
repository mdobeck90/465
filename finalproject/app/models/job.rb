class Job < ActiveRecord::Base

  def reward
    job_rewards = {:firewall => rand(0..2)*rand(0..1), :honeypot => rand(0..1)*rand(0..1), :o_contract => rand(0..1)*rand(0..1), :zeroday => rand(0..1)*rand(0..1), :cash => rand(0..500)*rand(1..3) }
  end  

end
