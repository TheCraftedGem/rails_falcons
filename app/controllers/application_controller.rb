class ApplicationController < ActionController::Base

  def current_user
    User.find_by(id: params[:id])
  end

  def validate_user
    unless current_user
      render json: "Error", status: 401
    end
  end
end