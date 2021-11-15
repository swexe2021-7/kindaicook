class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
    def new 
        @user = User.new
    end
    
    def create
        @user = User.new(uid: params[:user][:uid],password: params[:user][:pass],
        password_confirmation: params[:user][:pass_confirmation])
        if @user.valid? #validatesを実行してくれる
            flash[:notice] = 'ユーザー登録しました'
            @user.pass = BCrypt::Password.create(params[:user][:password])
            @user.save
            redirect_to users_path
        else
            attr_reader :'new'
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to root_path
    end
end
