class TopsController < ApplicationController
<<<<<<< HEAD
  def main
=======
    def main
>>>>>>> a858dd11b7bfac61f752edcf2abd7a3ae6ff8c7c
    render 'login'
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user and BCrypt::Password.new(user.pass) == params[:pass]
      #TODO: ログイン成功したことをユーザに知らせる
      session[:login_uid] = user.uid
      redirect_to root_path
    else
      #TODO: エラーメッセージ
      render 'login'
    end
  end

  def logout
    #TODO: ログアウトに成功したことをユーザに知らせる
    session.delete(:login_uid)
    redirect_to root_path
  end

end
