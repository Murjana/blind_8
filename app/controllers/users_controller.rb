class UsersController < ApplicationController
  # before_action :set_user, only: [:show]
  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :orientation, :gender, :preferred_date_ideas, :about_me, :age, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
