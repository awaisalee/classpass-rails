class CreateWorkoutRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_rosters do |t|
      t.integer    :student_id
      t.belongs_to :workout_time
      
      t.timestamps
    end
  end
end
