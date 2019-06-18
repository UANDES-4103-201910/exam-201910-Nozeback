class ApplicationController < ActionController::Base

	def is_user_logged_in
    if current_user.nil?
      return false
    else
      return true
    end
   end
end
