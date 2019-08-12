class WorkoutTime < ApplicationRecord
  belongs_to :workout
  has_many :workout_rosters
  has_many :students, through: :workout_rosters

  def max_students
    workout.max_number_students
  end

  def number_of_registered_students
    students.length
  end

  def available
    max_students > number_of_registered_students
  end

  def self.available
    select{|workouttime| workouttime.max_students > workouttime.number_of_registered_students}
  end
end
