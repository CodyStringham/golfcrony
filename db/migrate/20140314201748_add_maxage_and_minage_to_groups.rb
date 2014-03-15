class AddMaxageAndMinageToGroups < ActiveRecord::Migration
  def up
    add_column :groups, :max_age, :integer
    add_column :groups, :min_age, :integer
    remove_column :groups, :age
    add_column :groups, :max_handicap, :integer
    add_column :groups, :min_handicap, :integer
    remove_column :groups, :handicap
  end

  def down
    remove_column :groups, :max_age
    remove_column :groups, :min_age
    add_column :groups, :age, :integer
    remove_column :groups, :max_handicap
    remove_column :groups, :min_handicap
    add_column :groups, :handicap, :integer
  end
end
