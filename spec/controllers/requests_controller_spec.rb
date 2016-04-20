require 'spec_helper'

describe RequestsController do

  describe 'POST create' do
    before(:each) do
      @book = FactoryGirl.create(:book)
      @user = FactoryGirl.create(:user)
      sign_in @user
      request.env["HTTP_REFERER"] = "where_i_came_from"
      @request_attributes = FactoryGirl.attributes_for(:request, book_id: @book)
    end
    it 'should return 1 request in book' do
      expect {
        post :create, request: @request_attributes
      }.to change(@book.requests,:count).by(1)
    end
    it 'should return 1 request in book' do
      expect {
        post :create, request: @request_attributes
      }.to change(@user.requests,:count).by(1)
    end
  end
end
