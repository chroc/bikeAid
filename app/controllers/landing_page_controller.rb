class LandingPageController < ApplicationController

  def index
    @law_firms = LawFirm.all
    @users = User.all
  end

end
