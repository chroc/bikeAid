class EditIncidentTable < ActiveRecord::Migration[5.0]
  def change
    add_column :incident_report, :city
    add_column :incident_report, :state
    add_column :incident_report, :postcode
  end
end
