class AddReferralUrlToPost < ActiveRecord::Migration
  def change
    add_column :posts, :url, :string, :required=>true
  end
end
