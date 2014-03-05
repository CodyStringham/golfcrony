class AddsGroupsAndUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :groups_users do |t|
      t.belongs_to :groups
      t.belongs_to :users  
    end  
  end
end
