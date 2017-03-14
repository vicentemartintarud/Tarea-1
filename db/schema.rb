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

ActiveRecord::Schema.define(version: 20170310151142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "author"
    t.text     "content"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_stories", id: false, force: :cascade do |t|
    t.integer "story_id",   null: false
    t.integer "comment_id", null: false
    t.index ["comment_id", "story_id"], name: "index_comments_stories_on_comment_id_and_story_id", using: :btree
    t.index ["story_id", "comment_id"], name: "index_comments_stories_on_story_id_and_comment_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.text     "title"
    t.text     "header"
    t.text     "body"
    t.text     "story_lim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
