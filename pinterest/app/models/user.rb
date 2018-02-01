class User < ApplicationRecord

  has_many :pins, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: true, 
                       length: { maximum: 50 }, 
                       uniqueness: true 

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, 

  validates :password, presence: true,
                       length: { minimum: 6 }

end
