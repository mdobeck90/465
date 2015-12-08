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

  def generate_operative
    self.user_id = current_user.id
    self.name = f_name + " " + l_name
  end
end
