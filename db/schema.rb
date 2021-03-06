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

ActiveRecord::Schema.define(version: 20140630120141) do

  create_table "hotels", force: true do |t|
    t.string   "name"
    t.integer  "stars"
    t.integer  "rooms"
    t.integer  "beds"
    t.string   "city"
    t.string   "zipcode"
    t.string   "street"
    t.integer  "olery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_comments", force: true do |t|
    t.integer  "olery_id"
    t.integer  "review_id"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "review_date"
    t.string   "source_name"
    t.string   "title"
    t.string   "sentiment"
    t.string   "review_sentiment"
    t.string   "ratings"
    t.string   "reviewer"
    t.integer  "hotel_id"
    t.string   "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
