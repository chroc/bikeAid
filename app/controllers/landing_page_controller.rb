class LandingPageController < ApplicationController
  skip_before_action :require_login

  def index
    @law_firms = LawFirm.all
    @users = User.all
    @incident_reports = IncidentReport.all
  end

end
