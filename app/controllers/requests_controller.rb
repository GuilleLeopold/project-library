class RequestsController < ApplicationController
  layout false

  def create
    @request = Request.new(request_params)
    @success = @request.save
  end


  def date
    @book = Book.find(params[:id])
    @request = Request.new
    render json: { data: (render_to_string 'requests/date') }, status: :ok
  end

  private

  def request_params
    params.require(:request).permit(:request_date).merge({book_id: params[:id], user_id: current_user.id})
  end
end
