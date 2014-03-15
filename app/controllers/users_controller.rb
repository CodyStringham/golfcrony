class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @friendship = @users.friendship.new
  end

  def user_account
    @user = current_user
  end
end
