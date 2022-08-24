FactoryBot.define do
  factory :comment do
    content { "MyText" }
    course { nil }
    user { nil }
  end
end
