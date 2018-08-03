require 'spec_helper'

describe CommentsController do

  describe 'POST create' do
    before(:each) do
      @book = FactoryGirl.create(:book)
      @user = FactoryGirl.create(:user)
      sign_in @user
      request.env["HTTP_REFERER"] = "where_i_came_from"
      @comment_attributes = FactoryGirl.attributes_for(:comment, book_id: @book, user_id: @user)
    end
    it 'should return 1 comment in book' do
      expect {
        post :create, book_id: @book, user_id: @user, comment: @comment_attributes
      }.to change(@book.comments,:count).by(1)
    end
    it 'should return 1 comment in book' do
      expect {
        post :create, book_id: @book, user_id: @user, comment: @comment_attributes
      }.to change(@user.comments,:count).by(1)
    end
    it 'should not be able to create a comment' do
      post :create, book_id: @book, user_id: @user, comment: { not_valid: 'not_valid' }

      expect(response).to have_http_status(:error)
    end
  end
end
