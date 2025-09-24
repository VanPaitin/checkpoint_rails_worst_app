FactoryBot.define do
  factory :article do
    name { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }

    factory :article_with_comments do
      after(:create) do |article|
        create_list(:comment, rand(1..7), article: article)
      end
    end
  end
end
