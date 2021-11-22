class ApplicationController < ActionController::Base
private
<<<<<<< HEAD
=======

>>>>>>> 1d0619569bf12918dd4e06a1af3efd5c939c070d
    def current_user
     if session[:login_uid]
      User.find_by(uid: session[:login_uid])
     end
    end
helper_method :current_user
<<<<<<< HEAD
=======

>>>>>>> 1d0619569bf12918dd4e06a1af3efd5c939c070d
end
