class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_account
    @user = current_user
    @group = @user.groups.uniq
    @created = @user.created_groups

    # @group = Group.where(owner_id: current_user.id)
    #show a group that shares a friendship id with current user id 
    # @owned =Friendship.where(user_id: current_user.id)

  end
end
