class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
    def new 
        @user = User.new
    end
    
    def create
        uid = params[:user][:uid]
        pass = params[:user][:pass]
        $login_pass = BCrypt::Password.create(pass)
        @user =User.new(uid: uid,pass: $login_pass)
        
        if @user.save
            flash[:notice] = 'ユーザ登録完了'
            redirect_to users_path
        else
            render new_user_path
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to root_path
    end
end
