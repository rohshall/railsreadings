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

ActiveRecord::Schema.define(:version => 20130606110253) do

  create_table "device_types", :force => true do |t|
    t.string "name",    :null => false
    t.string "version", :null => false
  end

  create_table "devices", :force => true do |t|
    t.string   "mac_addr",        :limit => 12, :null => false
    t.integer  "device_type_id",                :null => false
    t.datetime "manufactured_at",               :null => false
    t.datetime "registered_at"
  end

  create_table "readings", :force => true do |t|
    t.string   "device_mac_addr", :limit => 12, :null => false
    t.string   "value",                         :null => false
    t.datetime "created_at",                    :null => false
  end

end
