class CooksController < ApplicationController
    def index
   @cooks = Cook.all #SELECT * FROM TWEET;
  end
  def new
   @cook = Cook.new
  end
  def create
   @cook = Cooks.new(message: params[:cook][:message], tdate: Time.current)
    if @cook.save
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
  tweet = Cook.find(params[:id])
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
