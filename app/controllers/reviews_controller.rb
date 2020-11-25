class ReviewsController < ApplicationController
  def index
    # Find all the reviews where the chicken_id matches current @chicken
    @reviews = Review.where(booking: params[:chicken_id])
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking

    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

