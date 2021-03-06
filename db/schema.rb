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

ActiveRecord::Schema.define(version: 20160929070856) do

  create_table "access_tokens", force: :cascade do |t|
    t.string   "user_name"
    t.string   "token"
    t.datetime "expire_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_agent"
  end

  create_table "login_logs", force: :cascade do |t|
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "user_name"
    t.datetime "log_in_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loginlogs", force: :cascade do |t|
    t.string   "user_ip"
    t.string   "user_agent"
    t.string   "user_name"
    t.datetime "log_in_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "user_name"
    t.string   "user_ip"
    t.string   "user_agent"
    t.datetime "log_in_time"
  end

end
