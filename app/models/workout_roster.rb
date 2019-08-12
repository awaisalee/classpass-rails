class WorkoutRoster < ApplicationRecord
  belongs_to :workout_time
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end
