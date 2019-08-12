# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    password: 'pa$$word'
   )
end

10.times do
  Studio.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address
  )
end

10.times do
  Workout.create!(
    name: Faker::App.name,
    studio_id: rand(9) + 1,
    max_number_students:rand(5)+ 1
  )
end

10.times do
  WorkoutTime.create!(
    workout_id: rand(9) + 1,
    start_time: Faker::Time.forward(days: 7),
    end_time: Faker::Time.between(from: DateTime.now + 8, to: DateTime.now + 9)
  )
end

10.times do
  WorkoutRoster.create!(
    student_id: rand(9) + 1,
    workout_time_id: rand(9) + 1
  )
end
