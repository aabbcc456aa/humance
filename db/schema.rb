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

ActiveRecord::Schema.define(:version => 20101014133250) do

  create_table "employees", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "sex"
    t.string   "birthplace"
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

  create_table "salary_items", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
