class CooksController < ApplicationController
<<<<<<< HEAD
  def index
    @cooks = Cook.all
=======
    def index
   @cook = Cook.all #SELECT * FROM TWEET;
>>>>>>> X
  end

  def new
<<<<<<< HEAD
    @cook = Cook.new
=======
   @cook = Cook.new
>>>>>>> X
  end

  def create
<<<<<<< HEAD
    #ログイン中にしたツイートリンクが表示されないのでsession[:user_id]が空であることは考慮しなくてよい
    user = User.find_by(uid: current_user.uid)
    @cook = Cook.new(message: params[:cook][:message], user_id: user.id)
    if @cook.save
      #TODO: ツイートが成功したことをユーザに知らせる
      redirect_to root_path
=======
   @cook = Cook.new(message: params[:cook][:message], tdate: Time.current)
    if @cook.save
     flash[:notice] = '1レコード追加しました'
     redirect_to root_path
>>>>>>> X
    else
      render 'new'
    end
  end

  def destroy
    cook = Cook.find(params[:id])
    cook.destroy
    redirect_to root_path
  end
  def show
   @cook = Cook.find(params[:id])
  end
  def destroy
  cook = Cook.find(params[:id])
    if cook.destroy
      flash[:notice] = '1レコード追加しました'
    end
    redirect_to root_path
  end
  def edit
    @cook = Cook.find(params[:id])
  end
  def update
    @cook = Cook.find(params[:id])
    if @cook.update(message: params[:cook][:message])
      flash[:notice] = '1レコード更新しました'
      redirect_to root_path
    else
      render 'edit'
    end
  end
end
