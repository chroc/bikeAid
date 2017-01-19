class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :grab_user, only: [:edit, :show, :destroy, :update]
  before_action :ensure_correct_user, except: [:new, :create]

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      render json: @user
    end
  end

  def update

    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      redirect_to "/users/#{@user.id}"
    end
  end

  def destroy
    @user.destroy
  end

  def show
    @incident_reports = @user.incident_reports
  end

  def edit
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :email, :phone, :password, :address, :city, :state, :postcode)
  end

  def grab_user
    @user = User.find_by(id: params[:id])
  end

  def ensure_correct_user
    unless params[:id].to_i == current_user.id
      redirect_to current_user
    end
  end

end
