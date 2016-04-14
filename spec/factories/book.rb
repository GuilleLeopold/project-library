FactoryGirl.define do
  factory :book, class: 'Book' do
    title  { Faker::Name.title }
    description  { Faker::Lorem.paragraph(4, false, 6) }
    year  {Faker::Number.between(1400, 2016)}
    ISBN {Faker::Number.number(9)}
    author
  end
end
