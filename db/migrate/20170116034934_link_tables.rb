class LinkTables < ActiveRecord::Migration[5.0]
  def change
    add_reference :incident_reports, :user_id, index: true
    add_reference :incident_reports, :law_firm_id, index: true
  end
end
