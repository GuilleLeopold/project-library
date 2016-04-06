class Book < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  validates_presence_of :title, :year, :ISBN, :author, :description
  validates_length_of :description, minimum: 20, maximum: 2000
  validates :year, numericality: {only_integer: true, less_than_or_equal_to: Time.now.year}
end
