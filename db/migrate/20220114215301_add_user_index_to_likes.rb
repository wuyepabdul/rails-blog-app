class AddUserIndexToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :user_id, :string
    add_index :likes, :user_id
  end
end
