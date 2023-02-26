class DevicesController < ApplicationController
  
  # GET /devices
  def index
    @devices = Device.all
  end
  
  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
    @device = Device.find(params[:id])
  end

  # POST /devices
  def create
    @device = Device.new(params[:device])

    if @device.save
      redirect_to(devices_url, :notice => 'Device was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /devices/1
  def update
    @device = Device.find(params[:id])

    if @device.update_attributes(params[:device])
      redirect_to(devices_url, :notice => 'Device was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /devices/1
  def destroy
    @device = Device.find(params[:id])
    @device.destroy

    redirect_to(devices_url)
  end
end