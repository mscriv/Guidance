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

ActiveRecord::Schema.define(version: 20141207025608) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "counselors", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diplomas", force: true do |t|
    t.text     "name"
    t.integer  "requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diplomas", ["requirement_id"], name: "index_diplomas_on_requirement_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "location"
    t.date     "event_date"
    t.time     "starts_at"
    t.time     "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "completed_at"
  end

  add_index "items", ["list_id"], name: "index_items_on_list_id"

  create_table "lists", force: true do |t|
    t.string   "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "school"
    t.string   "test_code"
    t.integer  "school_code"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["test_id"], name: "index_locations_on_test_id"

  create_table "requirements", force: true do |t|
    t.string   "year"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "requisite"
    t.integer  "diploma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["diploma_id"], name: "index_subjects_on_diploma_id"

  create_table "tests", force: true do |t|
    t.string   "name"
    t.date     "test_date"
    t.date     "registration_deadline"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "to_do_items", force: true do |t|
    t.string   "item"
    t.integer  "to_do_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "to_do_items", ["to_do_list_id"], name: "index_to_do_items_on_to_do_list_id"

  create_table "to_do_lists", force: true do |t|
    t.string   "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
