class GroupsController < ApplicationController

  before_filter :get_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
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
    if @group.update_attributes
      redirect_to group_path(@group)
    else
      render "edit"
    end
  end


  def destroy
    @group.destroy
  end


  private

  def get_group
    @group = Group.find(params[:id])
  end

end
