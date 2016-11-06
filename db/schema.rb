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

ActiveRecord::Schema.define(version: 20161105145710) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "pizza_id"
    t.integer  "stars"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customer_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "customer_id"
    t.time     "delivery_time"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "employee_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "street_address"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "phone_number"
    t.string   "image"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "delivery_employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "sex"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "date_joined"
  end

  create_table "desserts", force: :cascade do |t|
    t.string   "dessert_name"
    t.float    "price"
    t.string   "description"
    t.boolean  "vegetarian"
    t.boolean  "gluten_free"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string   "drink_brand"
    t.float    "price"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_name"
    t.date     "date_joined"
    t.string   "phone_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email_address"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "pizza_id"
    t.integer  "pizza_quantity"
    t.integer  "side_id"
    t.integer  "side_quantity"
    t.integer  "drink_id"
    t.integer  "drink_quantity"
    t.integer  "dessert_id"
    t.integer  "dessert_quantity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.string   "pizza_name"
    t.integer  "pizza_size"
    t.float    "price"
    t.string   "description"
    t.boolean  "vegetarian"
    t.boolean  "gluten_free"
    t.string   "spice_level"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sides", force: :cascade do |t|
    t.string   "side_name"
    t.float    "price"
    t.string   "description"
    t.boolean  "vegetarian"
    t.boolean  "gluten_free"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
