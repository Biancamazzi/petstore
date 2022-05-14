class ServicesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    # if params[:add]
    #   @service.add = @service.add+1
    # end
  end
end
