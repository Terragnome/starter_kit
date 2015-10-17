class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer  :user_id, :null=>false
      t.string   :title, :null=>false
      t.text     :body, :null=>false
      t.boolean  :active, :null=>false, :default=>false
      t.datetime :created_at
      t.datetime :posted_at
    end

    add_index :posts, :user_id
    add_index :posts, :title
    add_index :posts, [:created_at, :active]
  end
end
