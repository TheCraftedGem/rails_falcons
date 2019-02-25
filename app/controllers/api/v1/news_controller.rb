class Api::V1::NewsController < ApplicationController


  def index
    news = NewsFacade.new(params)
    render json: NewsSerializer.new(news)
  end

end