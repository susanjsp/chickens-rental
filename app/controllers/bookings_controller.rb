class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user

    # if @booking.save
    #   redirect_to bookings/:id
    # else
    #   redirect_to
    # end
  end

  private
  def booking_params
    params.require(:booking).permit(:chicken_id, :start_date, :end_date)
  end
end
