class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path
  end

  def index
    @users = User.all
    @newbook = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = Book.where(params[:id])
    @newbook = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :user_image, :introduction)
  end
end
