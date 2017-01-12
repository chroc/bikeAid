class CreateIncidentReports < ActiveRecord::Migration[5.0]
  def change
    create_table :incident_reports do |t|
      t.string :location
      t.date :date
      t.text :description
      t.boolean :police_involved
      t.boolean :ambulance_involved
      t.boolean :private_health
      t.text :additional_information

      t.timestamps
    end
  end
end
