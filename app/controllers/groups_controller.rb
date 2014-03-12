class GroupsController < ApplicationController

  before_filter :get_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.search(params[:search])

  end

  def show
  end


  def new
    @group = Group.new
  end


  def create
    @group = Group.new(params[:group])
    if @group.save
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
    redirect_to groups_path, alert: "Project has been deleted."
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
