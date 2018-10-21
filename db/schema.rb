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

ActiveRecord::Schema.define(version: 20181021025420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caregivers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.string "drivers_license_number"
    t.string "drivers_license_state"
    t.boolean "is_stna"
    t.string "stna_license_id"
    t.boolean "is_lpn"
    t.string "lpn_license_id"
    t.boolean "is_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zip"
    t.string "phone"
    t.date "dateofbirth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "caregiver_id"
    t.bigint "patient_id"
    t.datetime "scheduled_start"
    t.datetime "scheduled_end"
    t.text "notes"
    t.datetime "actual_start"
    t.datetime "actual_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caregiver_id"], name: "index_visits_on_caregiver_id"
    t.index ["patient_id"], name: "index_visits_on_patient_id"
  end

  add_foreign_key "visits", "caregivers"
  add_foreign_key "visits", "patients"
end
