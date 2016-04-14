FactoryGirl.define do
  factory :author, class: 'Author' do
    name  { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
  end
end
