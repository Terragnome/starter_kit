class UserAliasToNickname < ActiveRecord::Migration
  def change
    rename_column :users, :alias, :nickname
  end
end
