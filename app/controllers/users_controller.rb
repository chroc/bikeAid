class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  def user_params
    params.permit(:name, :username, :password, :location)
  end

end
