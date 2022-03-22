class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :like, dependent: :destroy 
    has_many :like_users, through: :favorites, source: :user
end
