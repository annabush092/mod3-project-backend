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

ActiveRecord::Schema.define(version: 20171026141029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.string "flavor_text"
  end

  create_table "pokemon_moves", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "move_id"
  end

  create_table "pokemon_stats", force: :cascade do |t|
    t.integer "base_stat"
    t.integer "stat_id"
    t.integer "pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "front_default"
    t.string "front_shiny"
    t.string "back_default"
    t.string "back_shiny"
  end

  create_table "stat_moves", force: :cascade do |t|
    t.integer "stat_id"
    t.integer "move_id"
    t.integer "stat_change"
  end

  create_table "stats", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_pokemons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pokemon_id"
    t.integer "hp_change", default: 0
    t.integer "speed_change", default: 0
    t.integer "attack_change", default: 0
    t.integer "special_attack_change", default: 0
    t.integer "defense_change", default: 0
    t.integer "special_defense_change", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
