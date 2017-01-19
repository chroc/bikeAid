class NotifierPreview < ActionMailer::Preview
  def new_incident_report
    LawFirmMailer.new_incident_report(LawFirm.first, User.first, IncidentReport.first)
  end
end
