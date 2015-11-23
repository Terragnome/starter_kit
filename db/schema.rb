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

ActiveRecord::Schema.define(version: 20151123031803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "counters", force: true do |t|
    t.string   "countable_type"
    t.integer  "countable_id"
    t.string   "key"
    t.integer  "counter",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "counters", ["countable_type", "countable_id", "key"], name: "index_counters_on_countable_type_and_countable_id_and_key", unique: true, using: :btree

  create_table "photos", force: true do |t|
    t.string "name",         null: false
    t.string "remote_url"
    t.string "internal_url"
  end

  add_index "photos", ["name"], name: "index_photos_on_name", using: :btree

  create_table "post_photos", force: true do |t|
    t.integer  "post_id"
    t.integer  "photo_id"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_photos", ["photo_id"], name: "index_post_photos_on_photo_id", using: :btree
  add_index "post_photos", ["post_id"], name: "index_post_photos_on_post_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id",                        null: false
    t.string   "title",                          null: false
    t.text     "body",                           null: false
    t.boolean  "active",         default: false, null: false
    t.datetime "created_at"
    t.datetime "posted_at"
    t.integer  "cost",           default: 0
    t.string   "call_to_action"
    t.string   "url"
    t.string   "slug"
    t.datetime "updated_at"
    t.text     "summary"
  end

  add_index "posts", ["active"], name: "index_posts_on_active", using: :btree
  add_index "posts", ["created_at"], name: "index_posts_on_created_at", using: :btree
  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree
  add_index "posts", ["title"], name: "index_posts_on_title", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                                null: false
    t.string   "email",                               null: false
    t.string   "nickname",                            null: false
    t.datetime "created_at"
    t.datetime "last_login_at"
    t.string   "icon"
    t.text     "profile"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
