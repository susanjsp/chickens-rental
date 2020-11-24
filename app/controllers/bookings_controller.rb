class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:chicken_id, :start_date, :end_date)
  end
end
