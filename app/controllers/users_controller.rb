class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to teams_path
    else
      redirect_to teams_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    byebug
    @user = User.find(params[:id])
    @user.email = current_user.email

    if @user.update(user_params)
      redirect_to teams_path
    else
      
    end
  end

  private

  def user_params
    params.require(:user).permit(:team_id)
  end

end