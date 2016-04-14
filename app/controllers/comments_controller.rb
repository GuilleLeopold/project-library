class CommentsController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create]
	before_filter :load_book, only: :create
	before_action :authenticate_user!, :only => [:create]



	def create
		puts comments_params 
		@book.comments.create(comments_params)
		
		redirect_to :back 
		#respond_to do |format|
		#format.html 
     	#format.js { render :create, layout: false }
    	
	end

	private 

	def comments_params
		params.require(:comment).permit(:stars, :text).merge(user_id: current_user.id)
	end

	def load_book
		@book = Book.find(params[:book_id])
	end
end