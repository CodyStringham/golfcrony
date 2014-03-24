class FriendshipController < ApplicationController
  def group
    @group = Group.find(params[:id])
    
  end
  def create 

    @friendship = Friendship.new(params[:friendship])
    @friendship.group_id = group.id
    @friendship.user_id = current_user.id
    if @friendship.save
      flash[:notice] = " Request to join #{@group.title} submitted !"
      redirect_to group_path(@group)
    end
  end

  def destroy
     @friendship = Friendship.find(params[:id])
     @friendship.delete 
     redirect_to account_path, notice: "You left the group"
  end

  def index
    
  end

end
