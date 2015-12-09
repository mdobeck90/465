class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def steal(breach)
    self.cash = current_user.cash + @breach.cash_stolen
    self.firewall = current_user.firewall + @breach.firewall_stolen
    self.honeypot = current_user.honeypot + @breach.honeypot_stolen
    self.o_contract = current_user.o_contract + @breach.o_contract_stolen
    self.zeroday = current_user.zeroday + @breach.z_stolen
  end

end
