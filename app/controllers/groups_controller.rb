class GroupsController < ApplicationController

  before_filter :get_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.simplesearch(params[:simplesearch])
    #@groups = @groups.title(params[:title]) if params[:title]
  end


  def advanced_search
    @search = Group.search(params[:q])
    @groups = @search.result
  end

  def show
    @group = Group.find(params[:id])
    #@friendship = @groups.friendship.new
  end


  def new
    @group = Group.new
  end


  def create
    @group = Group.new(params[:group])
    @group.owner_id = current_user.id
    if @group.save
      flash[:notice] = "Group #{@group.title} added!"
      redirect_to group_path(@group)
    else
      render "new"
    end
  end

  def edit
  end


  def update
    if @group.update_attributes(params[:group])
      redirect_to group_path(@group)
    else
      render "edit"
    end
  end


  def destroy
    @group.destroy
    redirect_to groups_path, notice: "Group was deleted"
  end

  def sendemail
    @group = Group.find(params[:id])
    Join.join_group(@group, current_user).deliver
    redirect_to root_path
    flash[:notice] = 'Your request to join this group has been submitted!'

  end

   

  private

  def get_group
    @group = Group.find(params[:id])
  end



end
