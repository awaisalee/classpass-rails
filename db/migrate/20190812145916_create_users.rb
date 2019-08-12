class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :first_name, null: false
      t.string   :last_name, null: false
      t.string   :username, null: false
      t.string   :password_digest

      t.timestamps
    end
  end
end
