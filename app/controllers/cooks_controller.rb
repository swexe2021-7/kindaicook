class CooksController < ApplicationController
  def index
    
    @cooks = Cook.all#SELECT * FROM TWEET;
    
    @cook = Cook.where("message LIKE ? ",'%' + params[:search] + '%')
  end

  def new
    @cook = Cook.new
  end

  def create
    #ログイン中にしたツイートリンクが表示されないのでsession[:user_id]が空であることは考慮しなくてよい
    user = User.find_by(uid: session[:login_uid])
    @cook = Cook.new(message: params[:cook][:message],step1: params[:cook][:step1],step2: params[:cook][:step2],step3: params[:cook][:step3],user_id: user.id)
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
 


