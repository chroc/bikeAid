class EditIncidentTable < ActiveRecord::Migration[5.0]
  def change
    add_column :incident_report, :city, :string
    add_column :incident_report, :state, :string
    add_column :incident_report, :postcode, :string
  end
end
