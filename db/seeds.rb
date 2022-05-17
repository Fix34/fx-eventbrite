require 'faker'

User.destroy_all

10.times do |index|
  user = User.create(first_name: Faker::Name.first_name, email: "email#{index}@yopmail.com", last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, encrypted_password: 'userpassword')
  puts "Users created !"
end

5.times do |event|
  event = Event.create(title: Faker::DcComics.title, start_date: Faker::Date.forward(days: 10), duration: [5,10,20,30].sample, description: Faker::Lorem.sentence(word_count: 15), price: Faker::Number.between(from: 1, to: 1000), location: Faker::JapaneseMedia::SwordArtOnline.location, admin_id: rand(1..5))
  puts "Events created !"
end