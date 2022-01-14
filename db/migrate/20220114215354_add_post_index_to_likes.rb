class AddPostIndexToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :post_id, :string
    add_index :likes, :post_id
  end
end
