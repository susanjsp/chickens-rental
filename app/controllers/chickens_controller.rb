class ChickensController < ApplicationController
  def show
    @chicken = Chicken.find(params[:id])
  end

  def edit
    @chicken = Chicken.find(params[:id])
  end

  def update
    @chicken = Chicken.find(params[:id])
    @chicken.update(chicken_params)
    redirect_to chicken_path(@chicken)
  end

  def destroy
    @chicken = Chicken.find(params[:id])
    @chicken.destroy
  end

  private

  def chicken_params
    params.require(:chicken).permit(:name, :description, :age, :location, :breed, :egg_size, :daily_rate)
  end
end
