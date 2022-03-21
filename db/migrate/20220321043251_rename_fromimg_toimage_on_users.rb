class RenameFromimgToimageOnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :img, :image
  end
end
