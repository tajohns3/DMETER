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

ActiveRecord::Schema.define(version: 20161003064651) do

  create_table "states", force: :cascade do |t|
    t.string   "state",      limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             limit: 4000
    t.string   "sur_name",               limit: 4000
    t.string   "phone",                  limit: 4000
    t.string   "location",               limit: 4000
    t.string   "user_name",              limit: 4000
    t.string   "role",                   limit: 4000
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.integer  "state_id",               limit: 4
    t.string   "email",                  limit: 4000, default: "",    null: false
    t.string   "encrypted_password",     limit: 4000, default: "",    null: false
    t.string   "reset_password_token",   limit: 4000
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,    default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 4000
    t.string   "last_sign_in_ip",        limit: 4000
    t.boolean  "admin",                               default: false
    t.boolean  "access",                              default: false, null: false
    t.boolean  "approved",                            default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, where: "([reset_password_token] IS NOT NULL)"

end
