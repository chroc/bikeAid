class CreateLawFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :law_firms do |t|
      t.string :company_name
      t.string :location
      t.boolean :freeAdvice
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
