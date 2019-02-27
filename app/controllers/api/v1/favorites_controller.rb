class Api::V1::FavoritesController < ApplicationController
  before_action :validate_user

  def create 
    current_user.favorites.create(name: params[:name])
    render json: FavoritesSerializer.new(current_user.favorites.last), status: 201
  end

  def show
    @favorite_location = UserFavorites.new(current_user.favorites)
    render to_partial: UserFavoritesSerializer.new(@favorite_location.current_weather)
  end
end