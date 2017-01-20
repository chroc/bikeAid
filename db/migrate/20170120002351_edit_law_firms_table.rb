class EditLawFirmsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :law_firms, :location, :address
    add_column :law_firms, :city, :string
    add_column :law_firms, :state, :string
    add_column :law_firms, :postcode, :string
  end
end
