class LawFirmMailer < ApplicationMailer
  default from: 'notifications@bikeaid.com'

  def new_incident_report(law_firm)
    @law_firm = law_firm
    mail(to: "chroc7@icloud.com", subject: "Incident Report created")
  end

end
