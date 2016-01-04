class AddPostAsin < ActiveRecord::Migration
  def change
    add_column :posts, :asin, :string
  end
end