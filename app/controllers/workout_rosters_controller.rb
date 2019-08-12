require 'pry'
class WorkoutRostersController < ApplicationController
  
  def new
    @workout_roster = WorkoutRoster.new
  end

  def create
    binding.pry
    @workout_roster = WorkoutRoster.create(workout_time_id: params[:time], student_id: current_user.id)
    redirect_to classes_path
  end

end
