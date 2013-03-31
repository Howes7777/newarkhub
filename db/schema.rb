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

ActiveRecord::Schema.define(:version => 20130331112734) do

  create_table "events", :force => true do |t|
    t.string   "eventname"
    t.date     "startdate"
    t.date     "enddate"
    t.time     "eventtime"
    t.integer  "sessions"
    t.decimal  "cost"
    t.text     "EventDescription"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
    t.integer  "venue_id"
    t.integer  "eventtype_id"
  end

  add_index "events", ["eventtype_id"], :name => "index_events_on_eventtype_id"
  add_index "events", ["user_id"], :name => "index_events_on_user_id"
  add_index "events", ["venue_id"], :name => "index_events_on_venue_id"

  create_table "eventtypes", :force => true do |t|
    t.string   "eventtypename"
    t.text     "eventtypedescription"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
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

  create_table "venues", :force => true do |t|
    t.string   "venuename"
    t.string   "address1"
    t.string   "address2"
    t.string   "addresstown"
    t.string   "addresscounty"
    t.string   "postcode"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.boolean  "ddaaccess"
    t.integer  "computers"
    t.boolean  "toilets"
    t.boolean  "wifi"
    t.decimal  "rentalcost"
    t.text     "otherinfo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "venue_id"
  end

  add_index "venues", ["venue_id"], :name => "index_venues_on_venue_id"

end
