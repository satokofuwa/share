class CreateFavorites < ActiveRecord::Migration[6.0]
def change
    create_table :favorites do |t|
      t.string :name
      t.string :title
      t.text   :content
      t.string :image
    end
end
end