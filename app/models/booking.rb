class Booking < ApplicationRecord
  belongs_to :chicken, foreign_key: "chicken_id"
  belongs_to :customer, foreign_key: "customer_id", class_name: 'User'
end
