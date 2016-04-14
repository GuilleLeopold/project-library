class Request < ActiveRecord::Base
	belongs_to :user
	belongs_to :book

	enum status: [ :pending, :denied, :aproved]
end
