require 'spec_helper'

describe BooksController do

	describe 'GET index' do
		before(:each) do
			@books = FactoryGirl.create_list(:book, 3)
		end
		it 'should return 3 books' do
			get :index
			assigns(:books).should eq(@books)
		end
	end

	describe 'GET show/:id'	do
		before(:each) do
			@book = FactoryGirl.create(:book)
		end
		it 'should return book' do
			get :show, id: @book.id
			assigns(:book).should eq(@book)
		end
	end
end
