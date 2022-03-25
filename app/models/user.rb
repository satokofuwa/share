class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name,  presence: true, length: { maximum: 30 }
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password 
  has_many :posts
  has_many :likes, dependent: :destroy 
  has_many :like_posts, through: :likes, source: :post
  has_many :contacts
end
