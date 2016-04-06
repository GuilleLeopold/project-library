class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
    
  end
  def index
    @books = Book.all
    respond_to do |format|
      format.html
    end
  end
end