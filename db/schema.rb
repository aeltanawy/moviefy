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

ActiveRecord::Schema.define(version: 2018_12_17_050054) do

  create_table "crews", force: :cascade do |t|
    t.string "director_name"
    t.integer "director_facebook_likes"
    t.string "actor_1_name"
    t.integer "actor_1_facebook_likes"
    t.string "actor_2_name"
    t.integer "actor_2_facebook_likes"
    t.string "actor_3_name"
    t.integer "actor_3_facebook_likes"
    t.integer "cast_total_facebook_likes"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_crews_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "movie_title"
    t.integer "num_critic_for_reviews"
    t.integer "duration"
    t.integer "gross"
    t.string "genres"
    t.string "movie_imdb_link"
    t.integer "num_voted_users"
    t.integer "facenumber_in_poster"
    t.string "plot_keywords"
    t.integer "num_user_for_reviews"
    t.string "language"
    t.string "country"
    t.string "content_rating"
    t.integer "budget"
    t.integer "title_year"
    t.float "imdb_score"
    t.float "aspect_ratio"
    t.integer "movie_fb_likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchasings", force: :cascade do |t|
    t.string "name_on_card"
    t.integer "card_num"
    t.integer "exp_month"
    t.integer "exp_year"
    t.integer "security_code"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.integer "num_of_tickets"
    t.integer "movie_id"
    t.integer "user_id"
    t.integer "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "total"
    t.index ["movie_id"], name: "index_purchasings_on_movie_id"
    t.index ["theater_id"], name: "index_purchasings_on_theater_id"
    t.index ["user_id"], name: "index_purchasings_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "theater_name"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "gender"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
