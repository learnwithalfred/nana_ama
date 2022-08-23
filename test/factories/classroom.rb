FactoryBot.define do
  factory :classroom do
    name { Faker::Bank.name }
    role { 1 }
  end
end
