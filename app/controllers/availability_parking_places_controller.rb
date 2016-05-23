class AvailabilityParkingPlacesController < ApplicationController
  before_action :set_availability_parking_place, only: [:show, :edit, :update, :destroy]

  # GET /availability_parking_places
  # GET /availability_parking_places.json
  def index
    @availability_parking_places = AvailabilityParkingPlace.all
  end

  # GET /availability_parking_places/1
  # GET /availability_parking_places/1.json
  def show
  end

  # GET /availability_parking_places/new
  def new
    @availability_parking_place = AvailabilityParkingPlace.new
  end

  # GET /availability_parking_places/1/edit
  def edit
  end

  # POST /availability_parking_places
  # POST /availability_parking_places.json
  def create
    @availability_parking_place = AvailabilityParkingPlace.new(availability_parking_place_params)

    respond_to do |format|
      if @availability_parking_place.save
        format.html { redirect_to @availability_parking_place, notice: 'Availability parking place was successfully created.' }
        format.json { render :show, status: :created, location: @availability_parking_place }
      else
        format.html { render :new }
        format.json { render json: @availability_parking_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /availability_parking_places/1
  # PATCH/PUT /availability_parking_places/1.json
  def update
    respond_to do |format|
      if @availability_parking_place.update(availability_parking_place_params)
        format.html { redirect_to @availability_parking_place, notice: 'Availability parking place was successfully updated.' }
        format.json { render :show, status: :ok, location: @availability_parking_place }
      else
        format.html { render :edit }
        format.json { render json: @availability_parking_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availability_parking_places/1
  # DELETE /availability_parking_places/1.json
  def destroy
    @availability_parking_place.destroy
    respond_to do |format|
      format.html { redirect_to availability_parking_places_url, notice: 'Availability parking place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availability_parking_place
      @availability_parking_place = AvailabilityParkingPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def availability_parking_place_params
      params.require(:availability_parking_place).permit(:day_of_week_id, :start_date, :finish_date, :hourly_rate, :daily_rate, :weekly_rate, :monthly_rate, :spaces_number, :parking_place_id)
    end
end
