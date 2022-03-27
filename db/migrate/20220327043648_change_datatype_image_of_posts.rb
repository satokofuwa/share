class ChangeDatatypeImageOfPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :image, :text
  end
end
