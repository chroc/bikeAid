class EditUserColumns < ActiveRecord::Migration[5.0]
  def change

    change_table :users do |t|
      t.remove :name, :username, :location
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :post_code
      t.text :password_digest
    end

  end
end
