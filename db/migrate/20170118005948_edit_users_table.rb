class EditUsersTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :phone_number, :phone
    rename_column :users, :post_code, :postcode
  end
end
