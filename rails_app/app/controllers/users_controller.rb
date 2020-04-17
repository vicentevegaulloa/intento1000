class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(params.require(:user).permit(:email, :password, :password_confirmation))
    if @user.valid?
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
    # byebug
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:email, :password, :password_confirmation))
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
