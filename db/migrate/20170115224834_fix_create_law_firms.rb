class FixCreateLawFirms < ActiveRecord::Migration[5.0]
  def change

    rename_column :law_firms, :freeAdvice, :free_advice
    
  end
end
