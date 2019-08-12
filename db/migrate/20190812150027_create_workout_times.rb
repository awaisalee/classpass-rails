class CreateWorkoutTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_times do |t|
      t.datetime    :start_time, null: false
      t.datetime    :end_time, null: false
      t.belongs_to  :workout
      
      t.timestamps
    end
  end
end
