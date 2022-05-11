class ServicesController < ApplicationController
  def index
    @service = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end
end
