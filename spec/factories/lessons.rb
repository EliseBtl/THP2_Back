require 'faker'

FactoryBot.define do
  factory :lesson do
    title { Faker::Lorem.characters(1..30) }
    description { Faker::Lorem.characters(1..300) }
  end
end
