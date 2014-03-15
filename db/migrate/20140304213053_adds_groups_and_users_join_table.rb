class AddsGroupsAndUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.belongs_to :group
      t.belongs_to :user  
      t.string :status
    end  
  end
end
