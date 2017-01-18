class IncidentReportsController < ApplicationController

  def create
    @incident_report = IncidentReport.new(incident_report_params)
    if @incident_report.save
      render json: @incident_report
    end
  end

  def update
    @incident_report = IncidentReport.find_by(id: params[:id])
    @incident_report.update(incident_report_params)
    if @incident_report.save
      # render json: @incident_report
      redirect_to "/incident_reports/#{@incident_report.id}"
    end
  end

  def destroy
    @incident_report = IncidentReport.find_by(id: params[:id])
    @incident_report.destroy
  end

  def show
    @incident_report = IncidentReport.find_by(id: params[:id])
  end

  def edit
    @incident_report = IncidentReport.find_by(id: params[:id])
  end

  def incident_report_params
    params.permit(:location, :date, :description, :police_involved, :ambulance_involved, :private_health, :additional_information)
  end

end
