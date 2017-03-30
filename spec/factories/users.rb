FactoryGirl.define do
  factory :user do
    username {Faker::Name.name}
    email    {Faker::Internet.email}
    password "example12"
  end
end
