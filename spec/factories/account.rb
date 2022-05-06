#frozen_string_literal: true

FactoryBot.define do 
  factory :account do
    name { Faker::Company.name }
    urban_outlets { false }
  end
end