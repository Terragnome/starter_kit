class UniqueColumnsOnUsers < ActiveRecord::Migration
  def change
    remove_index :users, :alias
    add_index :users, :alias, :unique=>true

    remove_index :users, :email
    add_index :users, :email, :unique=>true

    remove_index :users, :name
    add_index :users, :name, :unique=>true
  end
end
