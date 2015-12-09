module UsersHelper
   def self.steal(breach)
    self.cash = current_user.cash + breach.cash_stolen
  end 
end
