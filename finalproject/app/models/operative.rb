class Operative < ActiveRecord::Base
  belongs_to :user

  def check_deployment_time 
    if self.deployment_time != nil
      if self.deployment_time >= Time.now
        self.deployment_time = nil
        self.status = "idle"
      end
    end
  end
end
