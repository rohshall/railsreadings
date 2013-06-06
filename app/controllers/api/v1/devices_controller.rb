class Api::V1::DevicesController < Api::V1::ApplicationController
  respond_to :json

  def index
    @devices = Device.all
    respond_with(@devices)
  end

  def create
    @device = Device.create(params)
    respond_with(status: :ok)
  end

  def show
    @device = Device.find_by_id(params[:id])
    respond_with(@device)
  end

end
