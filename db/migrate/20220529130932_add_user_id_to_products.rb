class AddUserIdToProducts < ActiveRecord::Migration[7.0]

# adding user_id in the product schema
  def change
    add_column :products, :user_id, :integer
  end
end
