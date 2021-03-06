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

ActiveRecord::Schema.define(version: 20160424214156) do

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "friend_id"
    t.boolean  "is_pending"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
    t.integer  "quantity"
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id"

  create_table "recipe_steps", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "step_number"
    t.string   "step_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "recipe_steps", ["recipe_id"], name: "index_recipe_steps_on_recipe_id"

  create_table "recipes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "calories"
    t.integer  "number_of_likes"
    t.boolean  "contains_allergens"
    t.string   "level_of_difficulty"
    t.string   "vegan_vegetarian"
    t.float    "price"
    t.string   "steps"
    t.string   "ingredients"
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
