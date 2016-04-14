class RequestsController < ApplicationController

  def create
    @request = Request.create({book_id: params[:id], user_id: current_user.id })
  end

  def update
    Request.find(params[:id]).update(request_params)
    redirect_to books_path
  end

  private

  def request_params
    params.require(:request).permit(:request_date)
  end
end
