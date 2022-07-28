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

ActiveRecord::Schema[7.0].define(version: 2022_07_28_052327) do
  create_table "auction_items", force: :cascade do |t|
    t.integer "opening_bid"
    t.integer "sold_for"
    t.string "payment_status"
    t.boolean "is_bundle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auction_id", null: false
    t.integer "item_id", null: false
    t.integer "member_id", null: false
    t.index ["auction_id"], name: "index_auction_items_on_auction_id"
    t.index ["item_id"], name: "index_auction_items_on_item_id"
    t.index ["member_id"], name: "index_auction_items_on_member_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "status"
    t.integer "amount_collected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "quality"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "username"
    t.string "rank"
    t.string "email"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "auction_items", "auctions"
  add_foreign_key "auction_items", "items"
  add_foreign_key "auction_items", "members"
end
