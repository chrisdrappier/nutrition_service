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

ActiveRecord::Schema.define(version: 20170511025940) do

  create_table "abbrevs", force: :cascade do |t|
    t.string   "ndb_no"
    t.string   "shrt_desc"
    t.decimal  "water"
    t.decimal  "energ_kcal"
    t.decimal  "protein"
    t.decimal  "lipid_tot"
    t.decimal  "ash"
    t.decimal  "carbohydrt"
    t.decimal  "fiber_td"
    t.decimal  "sugar_tot"
    t.decimal  "calcium"
    t.decimal  "iron"
    t.decimal  "magnesium"
    t.decimal  "phosphorus"
    t.decimal  "potassium"
    t.decimal  "sodium"
    t.decimal  "zinc"
    t.decimal  "copper"
    t.decimal  "manganese"
    t.decimal  "selenium"
    t.decimal  "vit_c"
    t.decimal  "thiamin"
    t.decimal  "riboflavin"
    t.decimal  "niacin"
    t.decimal  "panto_acid"
    t.decimal  "vit_b6"
    t.string   "folate_tot"
    t.string   "folic_acid"
    t.string   "food_folate"
    t.string   "folate_dfe"
    t.string   "choline_tot"
    t.string   "vit_b12"
    t.string   "vit_a_iu"
    t.string   "vit_a_rae"
    t.string   "retinol"
    t.string   "alpha_carot"
    t.string   "beta_carot"
    t.string   "beta_crypt"
    t.string   "lycopene"
    t.string   "lut_zea"
    t.string   "vit_e"
    t.string   "vit_d_mcg"
    t.string   "vit_d_iu"
    t.string   "vit_k"
    t.string   "fa_sat"
    t.string   "fa_mono"
    t.string   "fa_poly"
    t.string   "cholestrl"
    t.decimal  "gm_wt_1"
    t.string   "gm_wt_desc1"
    t.decimal  "gm_wt_2"
    t.string   "gm_wt_desc2"
    t.string   "refuse_pct"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "data_srcs", force: :cascade do |t|
  end

end
