class Review < ApplicationRecord
  belongs_to :booking, foreign_key: "booking_id"

  validates :content, :booking, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
