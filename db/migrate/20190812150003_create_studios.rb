class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string   :name, null: false
      t.string   :address, null: false
      
      t.timestamps
    end
  end
end
