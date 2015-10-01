class UniqueUserNickname < ActiveRecord::Migration
  def change
    remove_index :users, :nickname
    add_index :users, :nickname, :unique=>true    

    change_column :users, :nickname, :string, :null=>false
  end
end
