class UsersController < ApplicationController 
  before_action :signed_in_user
  before_action :find_user, only: [:edit, :update]

  layout "auth"

  def new
    @user = User.new
    render layout: "admin"
  end

  def create
    @user = User.create(user_params)
    if @user.save
      log_in @user
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    render layout: "admin"

  end

  def all_user
    @users = User.all.order('created_at desc')
    render layout: "admin"
  end

  def update
    if @user.update(user_params)
      redirect_to dashboard_url, success: "Accout have updated"
    else
      redirect_to edit_user_path(current_user), danger: "please check all fields"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to all_user_url
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :profile, :status, :last_name, :email, :password, :password_confirmation)
  end
end
