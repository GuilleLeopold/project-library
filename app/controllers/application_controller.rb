class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordInvalid, with: :rescue_from_record_invalid

  def rescue_from_record_invalid(exception)
    render json: { errors: exception.to_json }, status: :error
  end
end
