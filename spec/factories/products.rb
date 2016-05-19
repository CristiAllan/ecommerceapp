FactoryGirl.define do
  factory :product do
    name {Faker::Name.name}
    description {Faker::Name.title}
    price {Faker::Commerce.price}
    maker {Faker::Name.title}
  end
end
