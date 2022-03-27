class Like < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :post_id, scope: :user_id
end
