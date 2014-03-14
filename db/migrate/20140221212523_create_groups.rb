class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :owner_name
      t.string :title
      t.string :day
      t.string :time_frame
      t.string :county
      t.string :course
      t.string :city
      t.string :age
      t.integer :handicap
      t.integer :group_size
      t.string :email

      t.timestamps
    end
  end
end
