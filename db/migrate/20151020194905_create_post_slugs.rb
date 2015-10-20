class CreatePostSlugs < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string, :required=>true
    add_index :posts, :slug, :unique=>true
  end
end
