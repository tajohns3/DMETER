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

ActiveRecord::Schema.define(version: 20161125193036) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "bank_id",    limit: 4
    t.integer  "dealer_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "activity_farmers", force: :cascade do |t|
    t.integer  "farmer_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "meet_farmer_id", limit: 4
  end

  create_table "applications", force: :cascade do |t|
    t.integer  "pre_demonstration_id", limit: 4
    t.string   "app_area",             limit: 4000
    t.date     "app_date"
    t.string   "competitor",           limit: 4000
    t.string   "app_type",             limit: 4000
    t.date     "follow_date"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "app_comment",          limit: 4000
    t.string   "follow_comment",       limit: 4000
    t.integer  "demonstration_id",     limit: 4
    t.string   "application_by",       limit: 4000
  end

  create_table "assist_reps", force: :cascade do |t|
    t.integer  "fa_activity_id", limit: 4
    t.string   "assist",         limit: 4000
    t.text     "comment",        limit: 2147483647
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string   "name",           limit: 4000
    t.string   "branch",         limit: 4000
    t.string   "account_number", limit: 4000
    t.string   "address",        limit: 4000
    t.string   "phone",          limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "noreceive",      limit: 4
    t.integer  "chnumber",       limit: 4
  end

  create_table "blank_checks", force: :cascade do |t|
    t.string   "bank_name",    limit: 4000
    t.string   "blank_check",  limit: 4000
    t.integer  "bank_account", limit: 4
    t.integer  "cheque_num",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "business_developments", force: :cascade do |t|
    t.integer  "pre_demonstration_id", limit: 4
    t.integer  "pocket_id",            limit: 4
    t.string   "option",               limit: 4000
    t.boolean  "sample_request",                    default: false, null: false
    t.integer  "numattendees",         limit: 4
    t.integer  "a_attendees",          limit: 4
    t.integer  "b_attendees",          limit: 4
    t.integer  "c_attendees",          limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "sr_activity_id",       limit: 4
    t.integer  "d_attendees",          limit: 4
  end

  create_table "crops", force: :cascade do |t|
    t.string   "crop",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "dealer_blanks", force: :cascade do |t|
    t.integer  "dealer_id",      limit: 4
    t.integer  "blank_check_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "dealer_props", force: :cascade do |t|
    t.integer  "dealer_id",     limit: 4
    t.integer  "proprietor_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "dealer_securities", force: :cascade do |t|
    t.integer  "dealer_id",         limit: 4
    t.integer  "security_check_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "dealer_visits", force: :cascade do |t|
    t.integer  "dealer_id",      limit: 4
    t.integer  "fa_activity_id", limit: 4
    t.integer  "farmer_id",      limit: 4
    t.integer  "number_farmer",  limit: 4
    t.string   "purpose",        limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "dealeravatars", force: :cascade do |t|
    t.integer  "dealer_id",    limit: 4
    t.string   "dealer_photo", limit: 4000
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "dealerphotos", force: :cascade do |t|
    t.integer  "dealer_id",    limit: 4
    t.string   "avatar",       limit: 4000
    t.string   "avatar_photo", limit: 4000
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.integer  "state_id",        limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "pocket_id",       limit: 4
    t.string   "name",            limit: 4000
    t.string   "address",         limit: 4000
    t.string   "atpost",          limit: 4000
    t.string   "pin_code",        limit: 4000
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "transportname",   limit: 4000
    t.string   "transportbranch", limit: 4000
    t.string   "transportacct",   limit: 4000
    t.string   "transportadd",    limit: 4000
    t.string   "transportph",     limit: 4000
    t.string   "whaddress",       limit: 4000
    t.string   "whatpost",        limit: 4000
    t.string   "whpincode",       limit: 4000
    t.string   "whtaluka",        limit: 4000
    t.string   "whdistrict",      limit: 4000
    t.boolean  "fert_license"
    t.string   "fl_photo",        limit: 4000
    t.date     "fl_issdate"
    t.date     "fl_expdate"
    t.boolean  "cent_stax"
    t.string   "cst_photo",       limit: 4000
    t.date     "cst_issdate"
    t.date     "cst_expdate"
    t.boolean  "state_stax"
    t.string   "sst_photo",       limit: 4000
    t.date     "sst_issdate"
    t.date     "sst_expdate"
    t.boolean  "vat"
    t.string   "vat_photo",       limit: 4000
    t.date     "vat_issdate"
    t.date     "vat_expdate"
    t.boolean  "pancard"
    t.string   "pc_photo",        limit: 4000
    t.date     "pc_issdate"
    t.date     "pc_expdate"
    t.string   "annturnover",     limit: 4000
    t.string   "bioturnover",     limit: 4000
    t.string   "custbase",        limit: 4000
    t.string   "dealerreqform",   limit: 4000
    t.string   "dealerphoto",     limit: 4000
    t.date     "introcall"
    t.boolean  "call"
    t.string   "taluka",          limit: 4000
    t.string   "district",        limit: 4000
    t.integer  "pocket_dat_id",   limit: 4
    t.integer  "district_id",     limit: 4
  end

  create_table "demonstration_attachments", force: :cascade do |t|
    t.integer  "demonstration_id",      limit: 4
    t.string   "avatar",                limit: 4000
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "post_demonstration_id", limit: 4
  end

  create_table "demonstrations", force: :cascade do |t|
    t.integer  "pre_demonstration_id", limit: 4
    t.string   "demo_status",          limit: 4000, default: "active"
    t.integer  "fa_activity_id",       limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "demo_code",            limit: 4000
    t.integer  "position_id",          limit: 4
  end

  create_table "demoresults", force: :cascade do |t|
    t.integer  "amid",               limit: 4
    t.integer  "srid",               limit: 4
    t.integer  "pocket_id",          limit: 4
    t.integer  "faid",               limit: 4
    t.string   "demostatus",         limit: 4000
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "demo_id",            limit: 4
    t.string   "photo_file_name",    limit: 4000
    t.string   "photo_content_type", limit: 4000
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.integer  "state_id",           limit: 4
    t.integer  "position_id",        limit: 4
    t.integer  "user_id",            limit: 4
    t.integer  "manager_id",         limit: 4
  end

  create_table "demos", force: :cascade do |t|
    t.string   "demostatus", limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "district",   limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "state_id",   limit: 4
  end

  create_table "fa_activities", force: :cascade do |t|
    t.integer  "field_assistant_id", limit: 4
    t.integer  "state_id",           limit: 4
    t.integer  "user_id",            limit: 4
    t.integer  "pocket_id",          limit: 4
    t.date     "date"
    t.text     "comment",            limit: 2147483647
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "activity",           limit: 4000
    t.integer  "position_id",        limit: 4
    t.integer  "manager_id",         limit: 4
  end

  create_table "fa_targets", force: :cascade do |t|
    t.integer  "field_assistant_id",  limit: 4
    t.integer  "target_id",           limit: 4
    t.integer  "village_number",      limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "total_month",         limit: 4
    t.integer  "sample_number",       limit: 4
    t.integer  "demo_number",         limit: 4
    t.integer  "farmer_number",       limit: 4
    t.integer  "prescription_number", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "crop_id",             limit: 4
    t.integer  "dealer_id",           limit: 4
  end

  create_table "farmcrops", force: :cascade do |t|
    t.integer  "crop_id",    limit: 4
    t.integer  "acreage",    limit: 4
    t.string   "unit",       limit: 4000
    t.string   "irr_source", limit: 4000
    t.integer  "farmer_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "farmcrops", ["farmer_id"], name: "index_farmcrops_on_farmer_id"

  create_table "farmers", force: :cascade do |t|
    t.integer  "state_id",      limit: 4
    t.integer  "useridstmgr",   limit: 4
    t.integer  "useridamgr",    limit: 4
    t.integer  "useridsr",      limit: 4
    t.integer  "pocket_id",     limit: 4
    t.integer  "dealer_id",     limit: 4
    t.string   "name",          limit: 4000
    t.integer  "village_id",    limit: 4
    t.string   "phnumber",      limit: 4000
    t.integer  "crop_id",       limit: 4
    t.integer  "acreage",       limit: 4
    t.string   "unit",          limit: 4000
    t.string   "irr_source",    limit: 4000
    t.string   "introcall",     limit: 4000
    t.binary   "callverified",  limit: 2147483647
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "pocket_dat_id", limit: 4
    t.integer  "position_id",   limit: 4
    t.integer  "user_id",       limit: 4
    t.integer  "manager_id",    limit: 4
  end

  create_table "field_assistants", force: :cascade do |t|
    t.integer  "state_id",        limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "pocket_id",       limit: 4
    t.string   "first_name",      limit: 4000
    t.string   "surname",         limit: 4000
    t.string   "address",         limit: 4000
    t.string   "taluka",          limit: 4000
    t.string   "district",        limit: 4000
    t.string   "pin_code",        limit: 4000
    t.string   "contact_number",  limit: 4000
    t.boolean  "experience"
    t.integer  "dealer_id",       limit: 4
    t.string   "form",            limit: 4000
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "yes"
    t.string   "fa_number",       limit: 4000
    t.boolean  "position_status",              default: false, null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "dealer_visit_id", limit: 4
    t.integer  "product_id",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "meet_dealers", force: :cascade do |t|
    t.string   "purpose",        limit: 4000
    t.text     "other",          limit: 2147483647
    t.integer  "sr_activity_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "meet_farmers", force: :cascade do |t|
    t.integer  "fa_activity_id", limit: 4
    t.integer  "farmer_id",      limit: 4
    t.string   "purpose",        limit: 4000
    t.string   "consultation",   limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "dealer_id",      limit: 4
    t.integer  "number_farmer",  limit: 4
    t.integer  "pocket_dat_id",  limit: 4
  end

  create_table "meet_fas", force: :cascade do |t|
    t.integer  "sr_activity_id", limit: 4
    t.string   "purpose",        limit: 4000
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "meet_sr_farmers", force: :cascade do |t|
    t.integer  "farmer_id",      limit: 4
    t.integer  "crop_id",        limit: 4
    t.string   "crop_condition", limit: 4000
    t.string   "crop_growth",    limit: 4000
    t.text     "recommendation", limit: 2147483647
    t.string   "purpose",        limit: 4000
    t.integer  "sr_activity_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "meet_state_managers", force: :cascade do |t|
    t.integer  "pocket_id",      limit: 4
    t.integer  "dealer_id",      limit: 4
    t.integer  "position_id",    limit: 4
    t.string   "purpose",        limit: 4000
    t.text     "other",          limit: 2147483647
    t.integer  "sr_activity_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "pocket_crops", force: :cascade do |t|
    t.integer  "pocket_id",  limit: 4
    t.integer  "crop_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "pocket_dats", force: :cascade do |t|
    t.integer  "pocket_id",      limit: 4
    t.integer  "pocket_info_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "village",        limit: 4000
    t.integer  "dealer_id",      limit: 4
    t.integer  "position_id",    limit: 4
    t.string   "taluka",         limit: 4000
    t.integer  "farmer_id",      limit: 4
  end

  create_table "pocket_districts", force: :cascade do |t|
    t.integer  "pocket_id",   limit: 4
    t.integer  "district_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "pocket_infos", force: :cascade do |t|
    t.integer  "taluka_id",  limit: 4
    t.integer  "village_id", limit: 4
    t.integer  "dealer_id",  limit: 4
    t.integer  "farmer_id",  limit: 4
    t.integer  "fa_id",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "pockets", force: :cascade do |t|
    t.integer  "state_id",         limit: 4
    t.integer  "user_id",          limit: 4
    t.string   "pocket_name",      limit: 4000
    t.integer  "district_id",      limit: 4
    t.integer  "crop_id",          limit: 4
    t.integer  "type_a",           limit: 4
    t.integer  "type_b",           limit: 4
    t.integer  "type_c",           limit: 4
    t.integer  "type_d",           limit: 4
    t.integer  "total_pdealer",    limit: 4
    t.string   "agriculture_land", limit: 4000
    t.decimal  "percent_irr",                   precision: 18, scale: 0
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "fa_number",          limit: 4000
    t.string   "first_name",         limit: 4000
    t.string   "surname",            limit: 4000
    t.string   "address",            limit: 4000
    t.string   "taluka",             limit: 4000
    t.string   "district",           limit: 4000
    t.string   "pin_code",           limit: 4000
    t.string   "contact_number",     limit: 4000
    t.string   "form",               limit: 4000
    t.boolean  "yes"
    t.boolean  "no"
    t.integer  "dealer_id",          limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "state_id",           limit: 4
    t.integer  "field_assistant_id", limit: 4
    t.integer  "district_id",        limit: 4
    t.integer  "pocket_dat_id",      limit: 4
    t.boolean  "position_status",                 default: false, null: false
  end

  create_table "post_demonstrations", force: :cascade do |t|
    t.integer  "demonstration_id", limit: 4
    t.string   "observation",      limit: 4000
    t.boolean  "contacrsr"
    t.text     "comment",          limit: 2147483647
    t.string   "demo_photo",       limit: 4000
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "fa_activity_id",   limit: 4
  end

  create_table "pre_demonstrations", force: :cascade do |t|
    t.integer  "farmer_id",      limit: 4
    t.integer  "crop_id",        limit: 4
    t.integer  "fa_activity_id", limit: 4
    t.string   "crop_growth",    limit: 4000
    t.string   "condition",      limit: 4000
    t.string   "demo_code",      limit: 4000
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "status",         limit: 4000, default: "Active"
  end

  create_table "prodsamples", force: :cascade do |t|
    t.integer  "ps_id",       limit: 4
    t.integer  "state_id",    limit: 4
    t.integer  "position_id", limit: 4
    t.string   "sample_purp", limit: 4000
    t.string   "sampletype",  limit: 4000
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "demoid",      limit: 4000
    t.string   "demo_id",     limit: 4000
    t.integer  "product_id",  limit: 4
    t.integer  "single_id",   limit: 4
    t.integer  "box_id",      limit: 4
  end

  create_table "product_applications", force: :cascade do |t|
    t.integer  "application_id", limit: 4
    t.integer  "product_id",     limit: 4
    t.integer  "quantity",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "single_id",      limit: 4
    t.integer  "box_id",         limit: 4
  end

  create_table "product_boxes", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "box_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "product_prescriptions", force: :cascade do |t|
    t.integer  "dealer_id",      limit: 4
    t.integer  "farmer_id",      limit: 4
    t.integer  "crop_id",        limit: 4
    t.string   "condition",      limit: 4000
    t.string   "crop_growth",    limit: 4000
    t.string   "crop_cond",      limit: 4000
    t.string   "acreage",        limit: 4000
    t.boolean  "prescribe"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "units",          limit: 4000
    t.integer  "meet_farmer_id", limit: 4
  end

  create_table "product_singles", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "single_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "proprietors", force: :cascade do |t|
    t.string   "fname",       limit: 4000
    t.string   "sname",       limit: 4000
    t.string   "mname",       limit: 4000
    t.string   "designation", limit: 4000
    t.string   "staddress",   limit: 4000
    t.string   "phnumber",    limit: 4000
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "resultphotos", force: :cascade do |t|
    t.integer  "demoresult_id",      limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "photo_file_name",    limit: 4000
    t.string   "photo_content_type", limit: 4000
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.string   "avatar",             limit: 4000
  end

  add_index "resultphotos", ["demoresult_id"], name: "index_resultphotos_on_demoresult_id"

  create_table "security_checks", force: :cascade do |t|
    t.string   "bank_name",    limit: 4000
    t.integer  "check_number", limit: 4
    t.integer  "bank_account", limit: 4
    t.integer  "amount",       limit: 4
    t.date     "issue_date"
    t.string   "status",       limit: 4000
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "singles", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sr_activities", force: :cascade do |t|
    t.integer  "state_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.date     "date"
    t.string   "pactivity",  limit: 4000
    t.string   "cf_option",  limit: 4000
    t.text     "other",      limit: 2147483647
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "manager_id", limit: 4
  end

  create_table "states", force: :cascade do |t|
    t.string   "state",        limit: 4000
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "abbreviation", limit: 4000
  end

  create_table "talukas", force: :cascade do |t|
    t.string   "taluka",     limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "targets", force: :cascade do |t|
    t.integer  "dealer_id",  limit: 4
    t.integer  "crop_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
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
    t.integer  "manager_id",             limit: 4
    t.integer  "state_manager_id",       limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, where: "([reset_password_token] IS NOT NULL)"

  create_table "villages", force: :cascade do |t|
    t.string   "village",    limit: 4000
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "farmcrops", "farmers"
  add_foreign_key "resultphotos", "demoresults"
end
