# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_12_150052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "studios", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "username", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_rosters", force: :cascade do |t|
    t.integer "student_id"
    t.bigint "workout_time_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_time_id"], name: "index_workout_rosters_on_workout_time_id"
  end

  create_table "workout_times", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_workout_times_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "studio_id"
    t.integer "max_number_students", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_workouts_on_studio_id"
  end

end
