class ChickensController < ApplicationController
  def edit
    @chicken = Chicken.find(params[:id])
  end

  def update
    @chicken = Chicken.find(params[:id])
    @chicken.update(params[:chicken])
    redirect_to chicken_path(@chicken)
  end

  private

  def chicken_params
    params.require(:chicken).permit(:name, :description, :age, :location, :breed, :egg_size, :daily_rate)
  end
end
