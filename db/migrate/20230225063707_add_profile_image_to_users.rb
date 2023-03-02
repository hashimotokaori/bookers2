class AddProfileImageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_image_id, :text
    add_index :users, :name, unique: true
  end
end
