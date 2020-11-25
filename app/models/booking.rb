class Booking < ApplicationRecord
  belongs_to :chicken, foreign_key: "chicken_id"
  belongs_to :customer, foreign_key: "customer_id", class_name: 'User'

  has_one :review, dependent: :destroy
end
