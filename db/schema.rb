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

ActiveRecord::Schema.define(version: 20171204101607) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "logo_url"
    t.text     "describe"
    t.integer  "company_field_id"
    t.integer  "service_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "companies", ["company_field_id"], name: "index_companies_on_company_field_id"
  add_index "companies", ["service_id"], name: "index_companies_on_service_id"

  create_table "company_fields", force: :cascade do |t|
    t.string   "field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gittrends", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.string   "quarter"
    t.string   "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "logo_url"
    t.text     "describe"
    t.integer  "stack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "services", ["stack_id"], name: "index_services_on_stack_id"

  create_table "stack_fields", force: :cascade do |t|
    t.string   "field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stacks", force: :cascade do |t|
    t.string   "name"
    t.string   "site_url"
    t.string   "short_describe"
    t.text     "describe"
    t.string   "version"
    t.integer  "stack_field_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "stacks", ["stack_field_id"], name: "index_stacks_on_stack_field_id"
  add_index "stacks", ["user_id"], name: "index_stacks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "phone"
    t.integer  "interesting_stack_id"
    t.integer  "my_stack_id"
    t.string   "nickname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["interesting_stack_id"], name: "index_users_on_interesting_stack_id"
  add_index "users", ["my_stack_id"], name: "index_users_on_my_stack_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
