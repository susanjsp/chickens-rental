class DashboardController < ApplicationController

def show
  @chickens = Chicken.where(owner: current_user)
  @upcoming_bookings = current_user.upcoming_bookings
  @current_bookings = current_user.current_bookings
  @past_bookings = current_user.past_bookings
end

end
