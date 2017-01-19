class IncidentReport < ApplicationRecord

  belongs_to :user
  belongs_to :law_firm
  
end
