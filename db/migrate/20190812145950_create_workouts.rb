class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string      :name, null: false
      t.belongs_to  :studio
      t.integer     :max_number_students, null: false
      
      t.timestamps
    end
  end
end
