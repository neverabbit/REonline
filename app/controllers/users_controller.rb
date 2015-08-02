class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "欢迎来到好的！"
      redirect_to @user
    else
      flash[:danger] = "注册失败"
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @state = @user.update_attributes(user_params)
      @params_user = params[:user]
      @params = params
      flash[:success] = "资料已更新"
      respond_to do |format|
        format.html { redirect_to @user }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.js
      end
    end
  end
  
  # def check_cancel
  #   if params[:commit] == "Cancel"
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :user_description,  :password, :password_confirmation)
    end
end
