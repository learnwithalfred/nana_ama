# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    gender {"male" }
    address {"Kumasi Ghana" }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    role { "user" }
  end
end
