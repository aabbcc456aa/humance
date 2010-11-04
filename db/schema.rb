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

ActiveRecord::Schema.define(:version => 20101104143928) do

  create_table "attachment_files", :force => true do |t|
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.date     "from"
    t.integer  "term"
    t.integer  "position_id"
    t.integer  "department_id"
    t.integer  "attachment_file_id"
    t.integer  "employee_id"
    t.string   "state",              :default => "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "sex"
    t.text     "birthplace"
    t.date     "birthday"
    t.string   "educational_background"
    t.string   "politics"
    t.text     "address"
    t.string   "id_card"
    t.string   "contact"
    t.date     "worked_from"
    t.date     "hired_on"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", :force => true do |t|
    t.float    "a"
    t.float    "b"
    t.float    "c"
    t.float    "d"
    t.float    "e"
    t.float    "f"
    t.float    "g"
    t.float    "h"
    t.float    "i"
    t.float    "j"
    t.float    "k"
    t.float    "l"
    t.float    "m"
    t.float    "n"
    t.float    "o"
    t.float    "p"
    t.float    "q"
    t.float    "r"
    t.float    "s"
    t.float    "t"
    t.float    "u"
    t.float    "v"
    t.float    "w"
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salary_items", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
