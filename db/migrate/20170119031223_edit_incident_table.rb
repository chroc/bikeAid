class EditIncidentTable < ActiveRecord::Migration[5.0]
  def change
    add_column :incident_reports, :city, :string
    add_column :incident_reports, :state, :string
    add_column :incident_reports, :postcode, :string
  end
end
