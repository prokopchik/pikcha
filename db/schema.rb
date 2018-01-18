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

ActiveRecord::Schema.define(version: 20180118210940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "country"
    t.string "zip_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
  end

  create_table "colors_mobile_phones", id: false, force: :cascade do |t|
    t.bigint "color_id", null: false
    t.bigint "mobile_phone_id", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.float "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
  end

  create_table "mobile_phones", force: :cascade do |t|
    t.string "name"
    t.integer "manufacturer_id"
    t.float "price"
    t.integer "memory_storage"
    t.float "display_size"
    t.integer "operative_memory"
    t.string "processor"
    t.integer "operation_system_id"
  end

  create_table "operation_systems", force: :cascade do |t|
    t.string "name"
  end

  create_table "order_mobile_phones", force: :cascade do |t|
    t.integer "order_id"
    t.integer "quantity"
    t.integer "mobile_phone_id"
    t.integer "color_id"
    t.float "price"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "address_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "currency_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.integer "role_id"
    t.integer "currency_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
