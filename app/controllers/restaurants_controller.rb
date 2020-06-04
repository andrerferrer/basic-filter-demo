class RestaurantsController < ApplicationController
  def index
    # Start with all the restaurants
    @restaurants = Restaurant.all

    # Filter if we have a filter
    filter_restaurants if params[:search]
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private

  def filter_restaurants
    search = params[:search]
    # The below allows searching for 'amarel' to return amareleen
    @restaurants = Restaurant.where('name ILIKE ?', "%#{search[:name]}%") unless search[:name].empty?
    # The bellow filters by neighborhood
    @restaurants = Restaurant.where(neighborhood: search[:neighborhood]) unless search[:neighborhood].empty?
  end
end
