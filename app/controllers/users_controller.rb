class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
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
    params.permit(:first_name, :last_name, :email, :phone_number, :password, :address, :city, :state, :post_code)
  end

end
