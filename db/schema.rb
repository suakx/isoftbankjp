# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100102205917) do

  create_table "addresses", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "nickname"
    t.string   "address"
    t.integer  "salutation_id", :default => 1
    t.date     "birthday"
    t.boolean  "deleted",       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addressgroups", :force => true do |t|
    t.integer  "address_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.integer  "address_id"
    t.integer  "template_id"
    t.boolean  "sentmail",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salutations", :force => true do |t|
    t.string   "pattern"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string   "title"
    t.string   "subject"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
