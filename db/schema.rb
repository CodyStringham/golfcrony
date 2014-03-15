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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140314201748) do

<<<<<<< HEAD
=======
  create_table "friendships", :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.string  "status"
  end

>>>>>>> 250d88c4ff687137ba6556b38edbcbc41b84a9d8
  create_table "groups", :force => true do |t|
    t.string   "title"
    t.string   "day"
    t.string   "time_frame"
    t.string   "county"
    t.string   "course"
    t.string   "city"
    t.integer  "group_size"
    t.string   "email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "owner_id"
    t.integer  "max_age"
    t.integer  "min_age"
    t.integer  "max_handicap"
    t.integer  "min_handicap"
  end

  create_table "groups_users", :force => true do |t|
    t.integer "groups_id"
    t.integer "users_id"
  end

  create_table "join_messages", :force => true do |t|
    t.text     "body"
    t.string   "email"
    t.string   "name"
    t.string   "subject"
    t.string   "topic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "handicap"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
