FactoryGirl.define do
  factory :request do
    request_date "2016-04-19"
    user
    book
  end
end
