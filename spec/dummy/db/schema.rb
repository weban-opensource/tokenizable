# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_22_054213) do

  create_table "tokenizable_tokens", force: :cascade do |t|
    t.string "ownerable_type"
    t.integer "ownerable_id"
    t.string "token"
    t.integer "used", default: 0
    t.datetime "last_use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ownerable_type", "ownerable_id"], name: "index_tokenizable_tokens_on_ownerable"
    t.index ["token"], name: "index_tokenizable_tokens_on_token", unique: true
  end

end
