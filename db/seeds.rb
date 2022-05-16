require 'faker'



10.times do |index|
  user = User.create(first_name: Faker::Name.first_name, email: "email#{index}@yopmail.com", last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, encrypted_password: 'userpassword')
end