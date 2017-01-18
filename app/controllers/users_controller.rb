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

    if @user.update(user_params)
      # render json: @user
      redirect_to "/users/#{@user.id}"
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  def show
    @user = User.find_by(id: params[:id])
    @incident_reports = @user.incident_reports
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :phone, :password, :address, :city, :state, :postcode)
  end

end
