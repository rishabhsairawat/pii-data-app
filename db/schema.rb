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

ActiveRecord::Schema.define(version: 20210909135026) do

  create_table "rental_units", force: :cascade do |t|
    t.string "address"
    t.integer "rooms"
    t.integer "bathrooms"
    t.integer "price_cents"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rental_units_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "email_ciphertext"
    t.string "email_bidx"
    t.text "mobile_ciphertext"
    t.string "mobile_bidx"
    t.index ["email_bidx"], name: "index_users_on_email_bidx"
    t.index ["mobile_bidx"], name: "index_users_on_mobile_bidx"
  end

end
