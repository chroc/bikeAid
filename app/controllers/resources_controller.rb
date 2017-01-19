class ResourcesController < ApplicationController
  skip_before_action :require_login
  def resources
  end
end
