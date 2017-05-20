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

ActiveRecord::Schema.define(version: 20170520212319) do

  create_table "book_deals", force: :cascade do |t|
    t.integer  "author_id",    null: false
    t.integer  "publisher_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_deals", ["author_id"], name: "index_book_deals_on_author_id"
  add_index "book_deals", ["publisher_id"], name: "index_book_deals_on_publisher_id"

  create_table "books", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "author_id",  null: false
    t.integer  "shelf_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["shelf_id"], name: "index_books_on_shelf_id"
  add_index "books", ["title"], name: "index_books_on_title"

  create_table "lendings", force: :cascade do |t|
    t.integer  "book_id",     null: false
    t.integer  "borrower_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lendings", ["book_id"], name: "index_lendings_on_book_id"
  add_index "lendings", ["borrower_id"], name: "index_lendings_on_borrower_id"

  create_table "libraries", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "libraries", ["name"], name: "index_libraries_on_name"

  create_table "people", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["name"], name: "index_people_on_name"

  create_table "publishing_companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publishing_companies", ["name"], name: "index_publishing_companies_on_name"

  create_table "reviews", force: :cascade do |t|
    t.text     "text",        null: false
    t.integer  "book_id",     null: false
    t.integer  "reviewer_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["book_id"], name: "index_reviews_on_book_id"
  add_index "reviews", ["reviewer_id"], name: "index_reviews_on_reviewer_id"

  create_table "shelves", force: :cascade do |t|
    t.integer  "library_id", null: false
    t.string   "location",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shelves", ["library_id"], name: "index_shelves_on_library_id"

end
