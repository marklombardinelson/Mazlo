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

ActiveRecord::Schema.define(version: 20170206170757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "held_at"
    t.string   "address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "maximum_guest_count"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "meal_selections", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "offered_meal_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "chef_id"
    t.integer  "cuisine_id"
    t.string   "name"
    t.string   "ingredients"
    t.integer  "suggested_price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "offered_meals", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "meal_id"
    t.integer  "price"
    t.text     "customizations"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "offered_meal_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "stars"
    t.integer  "meal_selection_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.integer  "oid",        null: false
    t.string   "namespace",  null: false
    t.datetime "created_at"
    t.index ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree
    t.index ["oid"], name: "index_refile_attachments_on_oid", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "admin"
    t.boolean  "chef"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "auth0"
    t.string   "token"
  end

end
