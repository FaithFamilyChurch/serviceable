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

ActiveRecord::Schema.define(version: 20161123183841) do

  create_table "group_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "group_type_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "groups_instruments", id: false, force: :cascade do |t|
    t.integer "group_id",      limit: 4
    t.integer "instrument_id", limit: 4
  end

  add_index "groups_instruments", ["group_id"], name: "index_groups_instruments_on_group_id", using: :btree
  add_index "groups_instruments", ["instrument_id"], name: "index_groups_instruments_on_instrument_id", using: :btree

  create_table "groups_items", id: false, force: :cascade do |t|
    t.integer "group_id", limit: 4
    t.integer "item_id",  limit: 4
  end

  add_index "groups_items", ["group_id"], name: "index_groups_items_on_group_id", using: :btree
  add_index "groups_items", ["item_id"], name: "index_groups_items_on_item_id", using: :btree

  create_table "groups_services", id: false, force: :cascade do |t|
    t.integer "group_id",   limit: 4
    t.integer "service_id", limit: 4
  end

  add_index "groups_services", ["group_id"], name: "index_groups_services_on_group_id", using: :btree
  add_index "groups_services", ["service_id"], name: "index_groups_services_on_service_id", using: :btree

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id", limit: 4
    t.integer "user_id",  limit: 4
  end

  add_index "groups_users", ["group_id"], name: "index_groups_users_on_group_id", using: :btree
  add_index "groups_users", ["user_id"], name: "index_groups_users_on_user_id", using: :btree

  create_table "instruments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "instruments_users", id: false, force: :cascade do |t|
    t.integer "instrument_id", limit: 4
    t.integer "user_id",       limit: 4
  end

  add_index "instruments_users", ["instrument_id"], name: "index_instruments_users_on_instrument_id", using: :btree
  add_index "instruments_users", ["user_id"], name: "index_instruments_users_on_user_id", using: :btree

  create_table "item_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "item_type_id", limit: 4
    t.text     "notes",        limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "items_services", id: false, force: :cascade do |t|
    t.integer "item_id",    limit: 4
    t.integer "service_id", limit: 4
  end

  add_index "items_services", ["item_id"], name: "index_items_services_on_item_id", using: :btree
  add_index "items_services", ["service_id"], name: "index_items_services_on_service_id", using: :btree

  create_table "items_songs", id: false, force: :cascade do |t|
    t.integer "item_id", limit: 4
    t.integer "song_id", limit: 4
  end

  add_index "items_songs", ["item_id"], name: "index_items_songs_on_item_id", using: :btree
  add_index "items_songs", ["song_id"], name: "index_items_songs_on_song_id", using: :btree

  create_table "items_users", id: false, force: :cascade do |t|
    t.integer "item_id", limit: 4
    t.integer "user_id", limit: 4
  end

  add_index "items_users", ["item_id"], name: "index_items_users_on_item_id", using: :btree
  add_index "items_users", ["user_id"], name: "index_items_users_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.date     "schedule_date"
    t.text     "notes",         limit: 65535
    t.string   "service_order", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "schedule_id",  limit: 4
    t.datetime "service_date"
    t.text     "notes",        limit: 65535
    t.string   "item_order",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sheet_musics", force: :cascade do |t|
    t.integer  "group_id",   limit: 4
    t.integer  "song_id",    limit: 4
    t.string   "file_path",  limit: 255
    t.string   "format",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "song_keys", force: :cascade do |t|
    t.string   "key_symbol",    limit: 255
    t.string   "key_full_name", limit: 255
    t.string   "key_root",      limit: 255
    t.string   "key_modifier",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "song_keys_songs", id: false, force: :cascade do |t|
    t.integer "song_key_id", limit: 4
    t.integer "song_id",     limit: 4
  end

  add_index "song_keys_songs", ["song_id"], name: "index_song_keys_songs_on_song_id", using: :btree
  add_index "song_keys_songs", ["song_key_id"], name: "index_song_keys_songs_on_song_key_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "author",     limit: 255
    t.string   "composer",   limit: 255
    t.string   "media_link", limit: 255
    t.text     "lyrics",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "subgroups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "group_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subgroups_users", id: false, force: :cascade do |t|
    t.integer "subgroup_id", limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "subgroups_users", ["subgroup_id"], name: "index_subgroups_users_on_subgroup_id", using: :btree
  add_index "subgroups_users", ["user_id"], name: "index_subgroups_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
