class SplitCreatedAtAndActiveIndexOnPosts < ActiveRecord::Migration
  def change
    remove_index :posts, [:created_at, :active]
    add_index :posts, :active
    add_index :posts, :created_at
  end
end
