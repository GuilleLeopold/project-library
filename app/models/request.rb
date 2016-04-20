class Request < ActiveRecord::Base
  enum status: [ :pending, :denied, :aproved]

  belongs_to :user
  belongs_to :book

  validates :request_date, presence: true
end
