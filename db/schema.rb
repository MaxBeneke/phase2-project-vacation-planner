# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_19_134443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.bigint "destination_id", null: false
    t.float "price"
    t.float "time_duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_activities_on_destination_id"
  end

  create_table "arrivals", force: :cascade do |t|
    t.bigint "vacation_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_arrivals_on_flight_id"
    t.index ["vacation_id"], name: "index_arrivals_on_vacation_id"
  end

  create_table "departures", force: :cascade do |t|
    t.bigint "vacation_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_departures_on_flight_id"
    t.index ["vacation_id"], name: "index_departures_on_vacation_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "language"
    t.text "description"
    t.text "highlights"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "abbr"
    t.string "picture"
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_time"
    t.string "arrival_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "destination_airport"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vacation_activities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "vacation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_vacation_activities_on_activity_id"
    t.index ["vacation_id"], name: "index_vacation_activities_on_vacation_id"
  end

  create_table "vacations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "year_start"
    t.string "month_start"
    t.string "day_start"
    t.string "year_end"
    t.string "month_end"
    t.string "day_end"
    t.index ["destination_id"], name: "index_vacations_on_destination_id"
    t.index ["user_id"], name: "index_vacations_on_user_id"
  end

  add_foreign_key "activities", "destinations"
  add_foreign_key "arrivals", "flights"
  add_foreign_key "arrivals", "vacations"
  add_foreign_key "departures", "flights"
  add_foreign_key "departures", "vacations"
  add_foreign_key "vacation_activities", "activities"
  add_foreign_key "vacation_activities", "vacations"
  add_foreign_key "vacations", "destinations"
  add_foreign_key "vacations", "users"
end
