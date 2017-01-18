class AdminsController < ApplicationController

  def index
    @users = User.all
    @incident_reports = IncidentReport.all
  end

end
