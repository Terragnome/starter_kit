class PostPhoto < ActiveRecord::Base
  belongs_to :photo
  belongs_to :post
end
