class UpdatePostsDefaultCall < ActiveRecord::Migration
  def change
    change_column :posts, :cost, :integer, :default=>0
    change_column_default(:posts, :call_to_action, nil)
  end
end
