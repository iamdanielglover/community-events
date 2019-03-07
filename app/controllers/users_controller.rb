class UsersController < ApplicationController
  before_action :authorize, except: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def active_events
    @user = User.find(params[:id])
    @events = @user.active_events
  end

  def expired_events
    @user = User.find(params[:id])
    @events = @user.expired_events
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   if @user.destroy!
  #     redirect_to users_path
  #   else
  #     render :show
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
