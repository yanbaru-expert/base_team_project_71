class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    @users = User.find(params[:id])
  end

  def create
    User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  private

  def user_params
    params.require(:user).parmit(:name, :age)
  end
end
