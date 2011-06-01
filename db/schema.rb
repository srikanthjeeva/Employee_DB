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

ActiveRecord::Schema.define(:version => 20110601075908) do

  create_table "attachments", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "attachable_id"
    t.integer  "attachable_type"
    t.integer  "size"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "height"
    t.integer  "width"
    t.string   "thumbnail"
    t.integer  "active",          :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "skill_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "organization"
    t.string   "designation"
    t.string   "current_organization"
    t.string   "total_experience"
    t.string   "relevant_experience"
    t.string   "current_ctc"
    t.string   "expected_ctc"
    t.string   "notice_period"
    t.string   "employee_type"
    t.string   "qualification_id"
    t.string   "year_of_passout"
    t.integer  "current_location_id"
    t.integer  "preferred_location_id"
    t.datetime "date_of_birth"
    t.string   "passport_number"
    t.string   "pan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
