class Comment < ApplicationRecord
belongs_to :pin
  belongs_to :user

  validates :pin_id, presence: true
	numericality: { only_integer: true }

  validates :user_id, presence: true
	numericality: { only_integer: true }
end
