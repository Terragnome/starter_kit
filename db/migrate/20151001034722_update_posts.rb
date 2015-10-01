class UpdatePosts < ActiveRecord::Migration
  def change
  	add_column :posts, :cost, :float, :default=>0, :required=>true
    add_column :posts, :call_to_action, :string, :default => "Buy", :required=>true
  end
end
