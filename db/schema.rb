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

ActiveRecord::Schema.define(version: 20160808201852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.string   "date"
    t.string   "pre_breath"
    t.string   "pre_swelling"
    t.string   "accident_since_last_treatment"
    t.string   "change_mobility"
    t.string   "pre_digestion_problems"
    t.string   "access_in_place"
    t.integer  "blood_flow_rate"
    t.string   "post_breath"
    t.string   "post_swelling"
    t.string   "post_digestion_problems"
    t.string   "bruising"
    t.string   "total_time"
    t.string   "missed_treatment"
    t.integer  "patient_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["patient_id"], name: "index_charts_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.float    "height"
    t.float    "weight"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "charts", "patients"
end
