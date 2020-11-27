class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chickens, foreign_key: "owner_id"
  has_many :bookings, foreign_key: "customer_id"
  has_many :reviews, through: :bookings

def upcoming_bookings
  bookings.where("start_date > ?", Date.today)
end

def current_bookings
  bookings.where("start_date < ? AND end_date > ?", Date.today, Date.today)
end

def past_bookings
  bookings.where("end_date < ?", Date.today)
end

end
