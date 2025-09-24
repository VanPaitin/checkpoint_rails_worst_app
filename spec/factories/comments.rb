FactoryBot.define do
  factory :comment do
    author { Faker::Name.name }
    body { Faker::Lorem.sentence }
  end
end
