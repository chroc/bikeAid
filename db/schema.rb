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

ActiveRecord::Schema.define(version: 20170117222438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incident_reports", force: :cascade do |t|
    t.string   "location"
    t.date     "date"
    t.text     "description"
    t.boolean  "police_involved"
    t.boolean  "ambulance_involved"
    t.boolean  "private_health"
    t.text     "additional_information"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.integer  "law_firm_id"
    t.index ["law_firm_id"], name: "index_incident_reports_on_law_firm_id", using: :btree
    t.index ["user_id"], name: "index_incident_reports_on_user_id", using: :btree
  end

  create_table "law_firms", force: :cascade do |t|
    t.string   "company_name"
    t.string   "location"
    t.boolean  "free_advice"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "post_code"
    t.text     "password_digest"
    t.string   "email"
    t.boolean  "super_user"
    t.string   "phone_number"
  end

end
