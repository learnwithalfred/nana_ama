

# 40.times do
#   User.create!(
#     [{
#       name:  Faker::Name.name,
#       email: Faker::Internet.email,
#       password: "welcome",
#       password_confirmation: "welcome",
#       gender: "male",
#       address: Faker::Address.community,
#       role: 1
#     }])
# end

10.times do
  User.create!(
    [{
      name:  Faker::Name.name,
      email: Faker::Internet.email,
      password: "welcome",
      password_confirmation: "welcome",
      gender: "male",
      address: Faker::Address.community,
      role: 3
    }])
end

# num = 71
# 30.times do
#   num = num + 1
#   Student.create!(
#     [{
#       user_id:  num,
#       classroom_id: Faker::Number.between(from: 1, to: 5),
#       contact: Faker::PhoneNumber.cell_phone_in_e164,
#       father: Faker::Name.name,
#       mother: Faker::Name.name,
#       about: Faker::Lorem.paragraph(sentence_count: 2),
#       dob: Faker::Date.between(from: '2000-09-23', to: '2018-09-25')
#     }])
# end


# 30.times do
#   Course.create!(
#     [{
#       title:  Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4),
#       course_date: Faker::Date.between(from: '2022-08-01', to: '2022-12-12'),
#       status: "pending",
#       content: Faker::Lorem.paragraph_by_chars(number: 400, supplemental: false),
#       user_id: User.where(role:"admin").first.id,
#       subject_id: Faker::Number.between(from: 1, to: 5),
#       classroom_id: Faker::Number.between(from: 1, to: 5),
#     }])
# end


# 70.times do
#   User.create!(
#     [{
#       name:  Faker::Name.name,
#       email: Faker::Internet.email,
#       password: "welcome",
#       password_confirmation: "welcome",
#       gender: "male",
#       address: Faker::Address.community,
#       role: Faker::Number.between(from: 1, to: 3)
#     }])
# end


# num = 1
# 15.times do
#   num = num + 1
#   Classroom.create!(
#     [{
#       name:  "Stage #{num}",
#       role: num
#     }])
# end


# 10.times do
#   Subject.create!(
#     [{
#       name:  Faker::Educator.subject
#     }])
# end


# 15.times do
#   Announcement.create!(
#     [{
#       title:  Faker::Lorem.paragraph(sentence_count: 4),
#       content: Faker::Lorem.paragraph_by_chars(number: 400, supplemental: false) ,
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


# 30.times do
#   Comment.create!(
#     [{
#       content: Faker::Lorem.paragraph(sentence_count: 4),
#       user_id: Faker::Number.between(from: 71, to: 100),
#       course_id: Faker::Number.between(from: 1, to: 10),
#     }])

# end
