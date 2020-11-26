class DashboardController < ApplicationController

def show
  @chickens = Chicken.where(owner: current_user)
  partitioned = current_user.bookings.partition do |booking|
  booking.end_date >= Date.today
  end
  @current_bookings = partitioned[0].sort_by { |b| b.start_date }
  @past_bookings = partitioned[1].sort_by { |b| b.start_date }.reverse

end

end
