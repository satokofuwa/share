class User < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :name,  presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    before_validation { email.downcase! }
    has_secure_password
    validates :password, length: { minimum: 6 }
    has_many :posts
    has_many :likes, dependent: :destroy 
    has_many :like_posts, through: :likes, source: :post
end
