class RenameLocationIncidentsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :incident_reports, :location, :address
  end
end
