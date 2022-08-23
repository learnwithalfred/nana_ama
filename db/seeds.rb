
50.times do
  User.create!(
    [{
      name:  Faker::Name.name,
      email: Faker::Internet.email,
      password: "password",
      password_confirmation: "password",
      gender: "male",
      address: Faker::Address.community,
      role: Faker::Number.between(from: 1, to: 3)
    }])
end


# num = 1
# 10.times do
#   num = num + 1
#   Classroom.create!(
#     [{
#       name:  Faker::Lorem.words(number: 10),
#       role: num
#     }])
# end


# 10.times do
#   Subject.create!(
#     [{
#       name:  Faker::Educator.subject
#     }])
# end

