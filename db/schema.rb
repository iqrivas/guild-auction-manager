# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_01_211201) do
  create_table "auction_items", force: :cascade do |t|
    t.integer "opening_bid"
    t.integer "sold_for"
    t.integer "payment_status", default: 0
    t.boolean "is_bundle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auction_id", null: false
    t.integer "item_id", null: false
    t.integer "member_id"
    t.index ["auction_id"], name: "index_auction_items_on_auction_id"
    t.index ["item_id"], name: "index_auction_items_on_item_id"
    t.index ["member_id"], name: "index_auction_items_on_member_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.integer "status", default: 0
    t.integer "amount_collected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bids", force: :cascade do |t|
    t.string "message"
    t.string "status"
    t.integer "bid_amount"
    t.integer "member_id", null: false
    t.integer "auction_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auction_item_id"], name: "index_bids_on_auction_item_id"
    t.index ["member_id"], name: "index_bids_on_member_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "quality", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "username"
    t.integer "rank", default: 0
    t.string "email"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "auction_items", "auctions"
  add_foreign_key "auction_items", "items"
  add_foreign_key "auction_items", "members"
  add_foreign_key "bids", "auction_items"
  add_foreign_key "bids", "members"
  add_foreign_key "items", "categories"
end
