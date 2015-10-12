class CreatePostPhotos < ActiveRecord::Migration
  def change
    create_table :post_photos do |t|
      t.integer :post_id
      t.integer :photo_id
      t.string :caption
      t.timestamps
    end

    add_index :post_photos, :post_id
    add_index :post_photos, :photo_id
  end
end
