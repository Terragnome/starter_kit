class PostPhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :post

  def name
    "test"
  end
end
