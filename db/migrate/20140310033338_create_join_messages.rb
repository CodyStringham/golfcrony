class CreateJoinMessages < ActiveRecord::Migration
  def change
    create_table :join_messages do |t|
      t.text :body
      t.string :email
      t.string :name
      t.string :subject
      t.string :topic

      t.timestamps
    end
  end
end
