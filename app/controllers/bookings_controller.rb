class BookingsController < ApplicationController
  before_action :find_chicken, only: [:new, :create]
  before_action :find_booking, only: [:show, :destroy]
  def show
    # @booking = Booking.find(params[:id])
  end

  def new
    # @chicken = Chicken.find(params[:chicken_id])
    @booking = Booking.new
  end

  def create
    # @chicken = Chicken.find(params[:chicken_id])
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    @booking.chicken = @chicken
    @booking.price = find_price(@chicken, @booking)
    @booking.save

    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to chicken_path(@chicken)
    end
  end

  def destroy
    # @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to chickens_path
  end

  private

  def booking_params
    params.require(:booking).permit(:chicken_id, :start_date, :end_date)
  end

  def find_chicken
    @chicken = Chicken.find(params[:chicken_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_price(chicken, booking)
    (booking.end_date - booking.start_date).to_i * chicken.daily_rate
  end
end
