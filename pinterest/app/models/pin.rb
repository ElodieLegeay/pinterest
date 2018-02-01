class Pin < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
	numericality: { only_integer: true }

  validates :url, presence: true 

end
