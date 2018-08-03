class Comment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :stars, presence: true
  validates :text, presence: true
end
