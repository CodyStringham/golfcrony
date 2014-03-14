class AddMaxageAndMinageToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :max_age, :integer
    add_column :groups, :min_age, :integer
    remove_column :groups, :age
    add_column :groups, :max_handicap, :integer
    add_column :groups, :min_handicap, :integer
    remove_column :groups, :handicap
  end
end
