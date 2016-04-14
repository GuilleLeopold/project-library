class UsersController < ApplicationController

	def index
		@books = current_user.books.all
    	respond_to do |format|
     	 	format.html
    	end
	end

end