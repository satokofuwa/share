class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :like, dependent: :destroy 
    has_many :favorite_users, through: :favorites, source: :user
    has_many :like_users, through: :favorites, source: :user
end
