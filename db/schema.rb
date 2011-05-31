# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110531102214) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "organization"
    t.string   "designation"
    t.string   "current_organization"
    t.float    "total_experience"
    t.float    "relevant_experience"
    t.float    "current_ctc"
    t.float    "expected_ctc"
    t.integer  "notice_period"
    t.integer  "employee_type"
    t.string   "qualification_id"
    t.integer  "year_of_passout"
    t.integer  "current_location_id"
    t.integer  "preferred_location_id"
    t.datetime "date_of_birth"
    t.string   "passport_number"
    t.string   "pan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
