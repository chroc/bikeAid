class LandingPageController < ApplicationController

  def index
    @law_firms = LawFirm.all
  end

end
