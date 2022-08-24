
# 50.times do
#   User.create!(
#     [{
#       name:  Faker::Name.name,
#       email: Faker::Internet.email,
#       password: "password",
#       password_confirmation: "password",
#       gender: "male",
#       address: Faker::Address.community,
#       role: Faker::Number.between(from: 1, to: 3)
#     }])
# end


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



# 10.times do
#   Course.create!(
#     [{
#       title:  Faker::Educator.course_name,
#       course_date: "2022-10-24 09:18:04",
#       status: "active",
#       content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#       user_id: User.where(role:"admin").first.id,
#       subject_id: Subject.first.id,
#       classroom_id: Classroom.first.id
#     }])

# end


3.times do
  Comment.create!(
    [{
      content: Faker::Lorem.paragraph(sentence_count: 4),
      user_id: User.first.id,
      course_id: Course.first.id
    }])

end