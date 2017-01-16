class LawFirmsController < ApplicationController

  def index
    @law_firms = Law_Firm.all
  end

  def create
    @law_firm = Law_Firm.create(user_params)
    if @law_firm.save
      render json: @law_firm
    end
  end

  def update
    @law_firm = Law_Firm.find_by(id: params[:id])
    @law_firm.update(user_params)
    if @law_firm.save
      render json: @law_firm
    end
  end

  def destroy
    @law_firm = Law_Firm.find_by(id: params[:id])
    @law_firm.destroy
  end

  def law_firm_params
    params.permit(:company_name, :location, :free_advice, :email, :phone_number)
  end

end
