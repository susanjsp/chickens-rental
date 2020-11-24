class ChickensController < ApplicationController

  def index
    @chickens = Chicken.all
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.owner_id = current_user
    if @chicken.save
      redirect_to chicken_path(@chicken)
    else
      render :new
    end
  end

  def new
    @chicken = Chicken.new
  end

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

    redirect_to chickens_path
  end

  private

  def chicken_params
    params.require(:chicken).permit(:name, :description, :age, :location, :breed, :egg_size, :daily_rate, :avatar)
  end


end


