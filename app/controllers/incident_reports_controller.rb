class IncidentReportsController < ApplicationController

  def index
    @incident_reports = Incident_Report.all
  end

  def create
    @incident_report = Incident_Report.create(incident_report_params)
    if @incident_report.save
      render json: @incident_report
    end
  end

  def update
    @incident_report = Incident_Report.find_by(id: params[:id])
    @incident_report.update(user_params)
    if @incident_report.save
      render json: @incident_report
    end
  end

  def destroy
    @incident_report = Incident_Report.find_by(id: params[:id])
    @incident_report.destroy
  end

  def incident_report_params
    params.permit(:location, :date, :description, :police_involved, :ambulance_involved, :private_health, :additional_information)
  end

end
