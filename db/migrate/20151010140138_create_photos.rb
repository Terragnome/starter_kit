class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name, :null=>false
      t.string :remote_url, :null=>false
      t.string :internal_url
    end

    add_index :photos, :name
  end
end