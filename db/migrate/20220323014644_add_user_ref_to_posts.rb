class AddUserRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user, :refences
  end
end
