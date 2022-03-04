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

ActiveRecord::Schema[7.0].define(version: 2022_03_02_170837) do
  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "First"
    t.string "MI"
    t.string "Last"
    t.string "Prefix"
    t.string "Address1"
    t.string "Address2"
    t.string "City"
    t.string "State"
    t.integer "Zip"
    t.string "Education"
    t.string "Income"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
