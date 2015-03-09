# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150306214314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.text   "name"
    t.date   "election_day"
    t.string "candidate_or_issue"
    t.text   "slogan"
    t.date   "start_date"
    t.date   "end_date"
    t.string "volunteer_coordinator"
    t.string "campaign_url"
    t.text   "script"
  end

  create_table "users", force: :cascade do |t|
    t.string  "f_name"
    t.string  "l_name"
    t.string  "email"
    t.string  "phone_number"
    t.string  "street_address"
    t.string  "apt_number"
    t.float   "latitude"
    t.float   "longitude"
    t.integer "zip_code",        default: 33460
    t.string  "password_digest"
  end

  create_table "visits", force: :cascade do |t|
    t.text     "notes"
    t.integer  "voter_id"
    t.integer  "user_id"
    t.string   "vote_decision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voters", force: :cascade do |t|
    t.string  "f_name"
    t.string  "l_name"
    t.string  "email"
    t.string  "phone_number"
    t.string  "street_address"
    t.string  "apt_number"
    t.float   "latitude"
    t.float   "longitude"
    t.integer "zip_code",       default: 33460
    t.string  "party"
    t.date    "birthdate"
    t.string  "race"
    t.string  "gender"
    t.date    "reg_date"
    t.date    "last_vote_date"
    t.boolean "uncanvassed",    default: false
    t.string  "decision"
  end

end
