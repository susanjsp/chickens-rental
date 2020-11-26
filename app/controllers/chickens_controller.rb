class ChickensController < ApplicationController

  def index
    # @chickens = Chicken.all
    if params[:query].present?
      sql_query = "location ILIKE :query OR description ILIKE :query OR egg_size ILIKE :query"
      @chickens = Chicken.where(sql_query, query: "%#{params[:query]}%")
    else
      @chickens = Chicken.all
    end
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.owner = current_user
    filepath = chicken_params[:photo].tempfile.path
    uploaded_image = Cloudinary::Uploader.upload(filepath)
    @chicken.photo_url = uploaded_image["secure_url"]
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

  def my_chickens
    @chickens = Chicken.where(owner: current_user)
  end

  private

  def chicken_params
    params.require(:chicken).permit(:name, :description, :age, :location, :breed, :egg_size, :daily_rate, :photo)
  end


end


