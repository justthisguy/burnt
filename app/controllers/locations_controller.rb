class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]
  respond_to :json

  # GET /locations.json
  def index
    respond_with Location.all
  end

  # GET /locations/1.json
  def show
    respond_with @location
  end

  # POST /locations.json
  def create
    @location = Location.new(location_params)

    standard_response @location.save
  end

  # PATCH/PUT /locations/1.json
  def update
    standard_response @location.update(location_params), 'Location was successfully updated.'
  end

  # DELETE /locations/1.json
  def destroy
    @location.destroy

    respond_with(head: :no_content)
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def location_params
    params[:location].permit(:name, :postal, :utility_identifier, :user_id )
  end

  def standard_response success, notice = ''
    if success
      respond_with(@location, notice: notice)
    else
      respond_with(@location.errors, location: locations_url, status: :unprocessable_entity)
    end
  end
end