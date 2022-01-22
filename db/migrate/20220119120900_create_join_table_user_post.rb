class CreateJoinTableUserPost < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :posts do |t|
      t.index [:user_id, :post_id]
    end
  end
end
