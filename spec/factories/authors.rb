FactoryBot.define do
  factory :author do
    name { Faker::Name.name }

    factory :author_with_articles do
      after(:create) do |author|
        create_list(:article, rand(1..5), author: author)
      end
    end
  end
end
