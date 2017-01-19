class IncidentReportsController < ApplicationController
  before_action :grab_incidents, only: [:edit, :show, :destroy, :update]
  # before_action :users_incidents, only: [:edit, :show, :destroy, :update]

  def new
    @law_firms = LawFirm.all
  end

  def create
    @incident_report = IncidentReport.new(incident_report_params)
    @law_firm = LawFirm.find_by(id: @incident_report.law_firm_id)
    @incident_report.user = current_user
    if @incident_report.save
      LawFirmMailer.new_incident_report(@law_firm, current_user, @incident_report).deliver_now
      render json: @incident_report
      redirect_to "/incident_reports/#{@incident_report.id}"
    end
  end

  def update
    @incident_report.update(incident_report_params)
    if @incident_report.save
      redirect_to "/incident_reports/#{@incident_report.id}"
    end
  end

  def destroy
    @incident_report.destroy
  end

  def show
  end

  def edit
  end

  private
  def incident_report_params
    params.permit(:address, :city, :state, :postcode, :date, :description, :police_involved, :ambulance_involved, :private_health, :additional_information)
  end

  def grab_incidents
    @incident_report = IncidentReport.find_by(id: params[:id])
  end

  # def users_incidents
  #
  # end

end
