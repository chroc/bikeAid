class LandingPageController < ApplicationController

  def index
    @law_firms = LawFirm.all
    @users = User.all
    @incident_reports = IncidentReport.all
  end

end
