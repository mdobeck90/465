class Operative < ActiveRecord::Base
  load "#{Rails.root}/lib/operative_f_name.rb"
  load "#{Rails.root}/lib/operative_l_name.rb"

  belongs_to :user

  def check_deployment_time 
    if self.deployment_time != nil
      if self.deployment_time >= Time.now
        self.deployment_time = nil
        self.status = "idle"
      end
    end
  end

  def generate_operative(user_id)
    current_user = User.find(user_id)

    f_name = operative_f_name.sample 
    l_name = operative_l_name.sample 
    self.name = f_name.capitalize + " " + l_name.capitalize
    self.status = "idle"
    self.skill = rand(1...3)
    self.job_id = nil
    o_contract_update = current_user.o_contract - 1
    current_user.update(o_contract: o_contract_update)
  end
end
