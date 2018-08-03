FactoryGirl.define do
  factory :comment do
    text "MyString"
    stars 1
    book
    user
  end
end
