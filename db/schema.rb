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

ActiveRecord::Schema.define(:version => 20130908035108) do

  create_table "abouts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dongs", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fellowships", :force => true do |t|
    t.string   "name"
    t.string   "lei"
    t.integer  "num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guans", :force => true do |t|
    t.integer  "shenqing_id"
    t.integer  "fellowship_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hschools", :force => true do |t|
    t.string   "ranking"
    t.string   "lei"
    t.string   "place"
    t.string   "religion"
    t.string   "scale"
    t.string   "result"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "joins", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lians", :force => true do |t|
    t.string   "name"
    t.string   "addr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meets", :force => true do |t|
    t.text     "content"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "mengs", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.integer  "qq"
    t.string   "email"
    t.string   "company"
    t.string   "zhi"
    t.string   "li"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shenqings", :force => true do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "bir"
    t.integer  "phone"
    t.integer  "tell"
    t.string   "email"
    t.string   "time"
    t.string   "timea"
    t.string   "timeb"
    t.string   "timec"
    t.string   "school"
    t.string   "schoola"
    t.string   "schoolb"
    t.string   "schoolc"
    t.string   "pro"
    t.string   "proa"
    t.string   "prob"
    t.string   "proc"
    t.string   "record"
    t.string   "recorda"
    t.string   "recordb"
    t.string   "recordc"
    t.string   "learn"
    t.string   "learna"
    t.string   "learnb"
    t.string   "learnc"
    t.string   "lang"
    t.string   "langa"
    t.string   "langb"
    t.string   "ability"
    t.string   "abilitya"
    t.string   "abilityb"
    t.string   "cert"
    t.string   "certa"
    t.string   "certb"
    t.string   "htime"
    t.string   "htimea"
    t.string   "htimeb"
    t.text     "adept"
    t.text     "hobby"
    t.string   "shen"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "level"
    t.string   "jtime"
    t.string   "jtimea"
    t.string   "jtimeb"
    t.string   "project"
    t.string   "projecta"
    t.string   "projectb"
    t.string   "award"
    t.string   "awarda"
    t.string   "awardb"
    t.string   "remark"
    t.string   "remarka"
    t.string   "remarkb"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
