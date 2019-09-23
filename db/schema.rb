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

ActiveRecord::Schema.define(version: 20190923075427) do

  create_table "car_parkings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "car_park_no"
    t.string "address"
    t.float "x_cord", limit: 24
    t.float "y_cord", limit: 24
    t.string "car_park_type"
    t.string "type_of_parking_system"
    t.string "short_term_parking"
    t.string "free_parking"
    t.string "night_parking"
    t.integer "free_park_decks"
    t.float "gantry_height", limit: 24
    t.text "car_park_basement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
