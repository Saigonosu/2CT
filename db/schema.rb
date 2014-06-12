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

ActiveRecord::Schema.define(version: 20140609014319) do

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.date     "date"
    t.integer  "trip_number"
    t.integer  "advance_cents",           default: 0,     null: false
    t.string   "advance_currency",        default: "USD", null: false
    t.integer  "reimbursement_cents",     default: 0,     null: false
    t.string   "reimbursement_currency",  default: "USD", null: false
    t.integer  "gross_revenue_cents",     default: 0,     null: false
    t.string   "gross_revenue_currency",  default: "USD", null: false
    t.integer  "net_revenue_cents",       default: 0,     null: false
    t.string   "net_revenue_currency",    default: "USD", null: false
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "trailer_rented",          default: false
    t.integer  "trailer_rental_cents",    default: 0,     null: false
    t.string   "trailer_rental_currency", default: "USD", null: false
  end

  add_index "routes", ["driver_id"], name: "index_routes_on_driver_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
