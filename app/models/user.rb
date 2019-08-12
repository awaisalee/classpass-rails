class User < ApplicationRecord
  has_secure_password

  has_many :workout_rosters, foreign_key: 'student_id'
  has_many :workout_times, through: :workout_rosters
end
