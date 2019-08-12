class Workout < ApplicationRecord
  belongs_to :studio
  has_many :workout_times
end
