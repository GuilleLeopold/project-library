require 'spec_helper'

describe UsersController do

  describe 'GET index' do
    before(:each) do
      @books = FactoryGirl.create_list(:book, 2)
      @user = FactoryGirl.create(:user)
      @myrequest = FactoryGirl.create(:request, book: @books.first, user: @user)
      @myrequest2 = FactoryGirl.create(:request, book: @books.last, user: @user)
      sign_in @user
    end
    it 'should return 2 books' do
      get :index
      assigns(current_user.books).should eq(@books)
    end
  end
end
