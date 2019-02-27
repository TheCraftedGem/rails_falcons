class Api::V1::FavoritesController < ApplicationController
  before_action :validate_user

  def create 
    current_user.favorites.create(name: params[:name])
    render json: FavoritesSerializer.new(current_user.favorites.last), status: 201
  end
end