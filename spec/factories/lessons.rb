# == Schema Information
#
# Table name: lessons
#
#  id          :uuid             not null, primary key
#  title       :string(50)       not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'faker'

FactoryBot.define do
  factory :lesson do
    title { Faker::Lorem.characters(1..30) }
    description { Faker::Lorem.characters(1..300) }
  end
end
