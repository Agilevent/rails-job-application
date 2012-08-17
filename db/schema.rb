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

ActiveRecord::Schema.define(:version => 20120817132814) do

  create_table "charges", :force => true do |t|
    t.string   "stripe_id"
    t.string   "object"
    t.boolean  "livemode"
    t.integer  "amount"
    t.string   "currency"
    t.boolean  "disputed"
    t.integer  "fee"
    t.boolean  "paid"
    t.boolean  "refunded"
    t.integer  "amount_refunded"
    t.string   "description"
    t.string   "failure_message"
    t.string   "invoice"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
