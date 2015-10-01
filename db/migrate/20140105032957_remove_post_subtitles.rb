class RemovePostSubtitles < ActiveRecord::Migration
  def change
    remove_column :posts, :subtitle
  end
end
