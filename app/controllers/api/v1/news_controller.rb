class Api::V1::NewsController < ApplicationController
  before_action :validate_user

  def index
    @user = User.find_by(id: params[:id])
    @news = NewsFacade.new(params)

    render to_partial: NewsSerializer.new(@news)
  end

end