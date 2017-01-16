class RenameColumns < ActiveRecord::Migration[5.0]
  def change

    rename_column :incident_reports, :user_id_id, :user_id
    rename_column :incident_reports, :law_firm_id_id, :law_firm_id

  end
end
