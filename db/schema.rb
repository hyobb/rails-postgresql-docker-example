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

ActiveRecord::Schema.define(version: 20200607061645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employment_companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "field"
    t.integer  "employment_company_id"
    t.integer  "resume_count"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "employments", ["employment_company_id"], name: "index_employments_on_employment_company_id", using: :btree

  add_foreign_key "employments", "employment_companies"
end
