class AddAverageageAndAveragehandicapToGroups < ActiveRecord::Migration
  def up
    remove_column :groups, :max_age
    remove_column :groups, :min_age
    add_column :groups, :avg_age, :integer

    remove_column :groups, :max_handicap
    remove_column :groups, :min_handicap
    add_column :groups, :avg_handicap, :integer
  end

  def down
    add_column :groups, :max_age, :integer
    add_column :groups, :min_age, :integer
    remove_column :groups, :avg_age

    add_column :groups, :max_handicap, :integer
    add_column :groups, :min_handicap, :integer
    remove_column :groups, :avg_handicap
  end
end
