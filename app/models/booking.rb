class Booking < ApplicationRecord
  belongs_to :chicken, foreign_key: "chicken_id"
  belongs_to :customer, foreign_key: "customer_id", class_name: 'User'

  has_one :review, dependent: :destroy

  validates :start_date, :end_date, presence: true
  validate :past_dates

  private

  def past_dates
    if start_date < Date.today && end_date < Date.today
      errors.add(:start_date, "can't be in the past")
      errors.add(:end_date, "can't be in the past")
    elsif start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    elsif end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    elsif end_date < start_date
      errors.add(:end_date, "can't be before start date")
    end
  end
end
