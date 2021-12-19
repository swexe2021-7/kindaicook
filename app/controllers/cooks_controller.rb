class CooksController < ApplicationController
  
  def index
    if params[:search] == nil or params[:search] == ''
      @cooks= Cook.all
    else
      @cooks = Cook.where("message LIKE ? ",'%' + params[:search] + '%')
    end
  end

  def new
    @cook = Cook.new
  end

  def create
    if params[:cook][:file] == nil
      file = []
    else
      file = params[:cook][:file].read
    end
    #ログイン中にしたツイートリンクが表示されないのでsession[:user_id]が空であることは考慮しなくてよい
    user = User.find_by(uid: session[:login_uid])
    @cook = Cook.new(message: params[:cook][:message],step1: params[:cook][:step1],step2: params[:cook][:step2],step3: params[:cook][:step3],img: file,user_id: user.id)
    if @cook.save
      logger.debug "a"
      #TODO: ツイートが成功したことをユーザに知らせる
      flash[:notice] = "投稿しました"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def get_image
    image = Cook.find(params[:id])
    send_data image.img, disposition: :inline, type: 'image/png'
  end
  
  def destroy
    cook = Cook.find(params[:id])
    cook.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to root_path
  end

  def show 
        @cook = Cook.find(params[:id])
  end
  
end



