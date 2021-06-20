class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    User.create(user_params)
  end

  private

  def user_params
    params.require(:user).parmit(:name, :age)
  end
end
