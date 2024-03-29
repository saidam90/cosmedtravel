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

ActiveRecord::Schema[7.0].define(version: 2024_03_29_172416) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_treatments", force: :cascade do |t|
    t.string "body_treatment_name"
    t.text "body_treatment_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "face_treatments", force: :cascade do |t|
    t.string "face_treatment_name"
    t.text "face_treatment_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_treatments", force: :cascade do |t|
    t.string "hair_treatment_name"
    t.text "hair_treatment_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string "package_name"
    t.text "package_description"
    t.string "package_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "payments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "address"
    t.string "city"
    t.string "country"
    t.date "payment_date"
    t.integer "payment_amount"
    t.bigint "package_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_payments_on_package_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.bigint "face_treatment_id"
    t.bigint "body_treatment_id"
    t.bigint "hair_treatment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_treatment_id"], name: "index_treatments_on_body_treatment_id"
    t.index ["face_treatment_id"], name: "index_treatments_on_face_treatment_id"
    t.index ["hair_treatment_id"], name: "index_treatments_on_hair_treatment_id"
  end

  add_foreign_key "payments", "packages"
  add_foreign_key "treatments", "body_treatments"
  add_foreign_key "treatments", "face_treatments"
  add_foreign_key "treatments", "hair_treatments"
end
