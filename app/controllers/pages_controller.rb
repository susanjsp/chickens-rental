class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # def index
  #   # should show the chickens list
  #   @chickens = Chicken.find(:all, limit: 10, order: 'date_added', include: user)
  # end

  # def sign_up
  #   # needs to link to users/sign_up

  # end

  def home
  end

end
