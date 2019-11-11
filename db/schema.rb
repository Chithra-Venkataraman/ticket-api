# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_141101) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "theater_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["theater_id"], name: "index_movies_on_theater_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "row"
    t.decimal "seat_number"
    t.decimal "price"
    t.string "_class"
    t.string "status"
    t.integer "show_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_seats_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.datetime "show_time"
    t.integer "theater_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["theater_id"], name: "index_shows_on_theater_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
