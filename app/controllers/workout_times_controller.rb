class WorkoutTimesController < ApplicationController

  def index
    @available_workouts = WorkoutTime.available
  end
end
