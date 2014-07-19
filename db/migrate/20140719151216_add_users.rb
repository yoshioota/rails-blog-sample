class AddUsers < ActiveRecord::Migration
  def change
    add_column :users, :screen_name, :string, null: false
    add_column :users, :user_name, :string
    add_column :users, :user_description, :string

    add_index :users, :screen_name, unique: true
  end
end
