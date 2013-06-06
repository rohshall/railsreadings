class Api::V1::ReadingsController < Api::V1::ApplicationController
  respond_to :json

  def index
    device_id = params[:device_id]
    @readings = Reading.where(device_mac_addr: device_id)
    respond_with(@readings)
  end

  def create
    @reading = Reading.create(params)
    respond_with(@reading)
  end

end
