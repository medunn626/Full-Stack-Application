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

ActiveRecord::Schema.define(version: 20171102111125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "barber_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["barber_id"], name: "index_appointments_on_barber_id"
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "barbers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "shop_name"
    t.string "zip"
    t.string "services"
    t.integer "max_price"
    t.string "busiest_day"
    t.time "busiest_time"
    t.decimal "average_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_barbers_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "zip"
    t.string "services"
    t.integer "max_price"
    t.string "best_day"
    t.time "best_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "appointments", "barbers"
  add_foreign_key "appointments", "customers"
  add_foreign_key "appointments", "users"
  add_foreign_key "barbers", "users"
  add_foreign_key "customers", "users"
  add_foreign_key "examples", "users"
end
