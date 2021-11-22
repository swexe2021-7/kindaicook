class CooksController < ApplicationController
  def index
    @cooks = Cook.all#SELECT * FROM TWEET;
  end

  def new
    @cook = Cook.new
  end

  def create
    #ログイン中にしたツイートリンクが表示されないのでsession[:user_id]が空であることは考慮しなくてよい
    user = User.find_by(uid: session[:login_uid])
    @cook = Cook.new(message: params[:tweet][:message], user_id: user.id)
    if @cook.save
      #TODO: ツイートが成功したことをユーザに知らせる
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    cook = Cook.find(params[:id])
    cook.destroy
    redirect_to root_path
  end
end