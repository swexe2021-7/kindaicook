class CooksController < ApplicationController
    def index
   @tweet = Tweet.all #SELECT * FROM TWEET;
  end
  def new
   @tweet = Tweet.new
  end
  def create
   @tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current)
    if @tweet.save
     flash[:notice] = '1レコード追加しました'
     redirect_to root_path
    else
     render 'new'
    end
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
