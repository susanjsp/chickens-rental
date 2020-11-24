class Chicken < ApplicationRecord
  SIZES = %w(XS S M L XL)
  BREEDS = %w(golden funky cheeky chunky sporty)


  # belongs_to :owner, foreign_key: "owner_id", class_name: 'User'
  validates :name, :location, :age, :daily_rate, :egg_size, presence: true
  validates :egg_size, inclusion: { in: SIZES }
  validates :breed, inclusion: { in: BREEDS }
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :name, uniqueness: true
end
