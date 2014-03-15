class FriendshipController < ApplicationController
  def req
    @group = Group.find(params[:id])
    @user = User.first_name(params[:id])
    unless @Friendship.nil?
      if Friendship.request(@group, @user)
        flash[:notice] = "Join group #{@group.title} requested"
      else
        flash[:notice] = "Joining #{@group.title} cannot be requested"
      end
    end
    redirect_to :controller => :user, :action => :index
  end
end
