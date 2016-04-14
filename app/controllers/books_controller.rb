class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    @comment = Comment.new
    @request = Request.new
  end

  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.json
    end
  end


end
