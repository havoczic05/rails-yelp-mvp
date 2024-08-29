# frozen_string_literal: true

# Controller de Restaurant model
class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: :show
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurants_path
  end

  def show
    @review = Review.new
    @reviews = @restaurant.reviews
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end
end
