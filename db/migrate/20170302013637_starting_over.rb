class StartingOver < ActiveRecord::Migration[5.0]
  def change
    create_table "comments", force: :cascade do |t|
      t.string   "content"
      t.integer  "user_id"
      t.integer  "post_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["post_id"], name: "index_comments_on_post_id"
      t.index ["user_id"], name: "index_comments_on_user_id"
    end

    create_table "posts", force: :cascade do |t|
      t.string   "title"
      t.string   "content"
      t.integer  "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string   "post_image"
      t.index ["user_id"], name: "index_posts_on_user_id"
    end

    create_table "users", force: :cascade do |t|
      t.string   "user_name"
      t.string   "profile_picture"
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
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end
end
