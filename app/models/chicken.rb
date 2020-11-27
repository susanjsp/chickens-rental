class Chicken < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_chicken,
    against: [ :location, :description, :egg_size ],
    using: {
      tsearch: { prefix: true }
    }
  SIZES = %w(Extra-Small Small Medium Large Extra-Large)
  BREEDS = %w(golden funky cheeky chunky sporty)

  belongs_to :owner, foreign_key: "owner_id", class_name: 'User'
  has_one_attached :photo

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :name, :location, :age, :daily_rate, :egg_size, presence: true
  validates :egg_size, inclusion: { in: SIZES }
  validates :breed, inclusion: { in: BREEDS }
  validates :age, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :name, uniqueness: true

  def upcoming_rentouts
    bookings.where("start_date > ?", Date.today)
  end

  def current_rentouts
    bookings.where("start_date < ? AND end_date > ?", Date.today, Date.today)
  end

  def past_rentouts
    bookings.where("end_date < ?", Date.today)
  end

  def average_rating
    if self.reviews.count > 0
      ratings = self.reviews.map do |review|
        review.rating
      end
      ratings.sum / ratings.count
    else
      return 0
    end
  end

end
