class IncidentReportsController < ApplicationController
  before_action :grab_incidents, only: [:edit, :show, :destroy, :update]
  # before_action :users_incidents, only: [:edit, :show, :destroy, :update]

  def new
    @law_firms = LawFirm.all
  end

  def create
    @incident_report = IncidentReport.new(incident_report_params)
    @law_firm = LawFirm.find_by(id: params[:lawFirm])
    @incident_report.user = current_user
    @incident_report.law_firm = @law_firm
    if @incident_report.save
      LawFirmMailer.new_incident_report(@law_firm, current_user, @incident_report).deliver_now
      flash[:success] = 'You have successfully submitted your incident report'
      render json: @incident_report
    end
  end

  def update
    @incident_report.update(incident_report_params)
    if @incident_report.save
      render json: @incident_report
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
