class ApplicationController < ActionController::Base
<<<<<<< HEAD
private
=======
    private
>>>>>>> X
    def current_user
     if session[:login_uid]
      User.find_by(uid: session[:login_uid])
     end
    end
<<<<<<< HEAD
helper_method :current_user
=======
helper_method :current_users
>>>>>>> X
end
