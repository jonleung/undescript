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

ActiveRecord::Schema.define(:version => 20110814224217) do

  create_table "analytics_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.string   "username"
    t.string   "password"
    t.string   "property"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.string   "rss_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slides", :force => true do |t|
    t.integer  "slideshow_id"
    t.string   "subtype"
    t.string   "title"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slideshows", :force => true do |t|
    t.string   "name"
    t.text     "slide_order_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.text     "html"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.string   "video_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "web_slides", :id => false, :force => true do |t|
    t.integer  "slide_id",   :null => false
    t.string   "site_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
