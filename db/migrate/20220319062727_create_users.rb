class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string "name"
      t.text "email"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.string "password_digest"
      t.text "img"
      t.index ["email"], name: "index_users_on_email", unique: true
    end
  end
end
