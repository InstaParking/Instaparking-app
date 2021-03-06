class ParkingPlacesController < PageAuthenticateController
  before_action :set_parking_place, only: [:show, :edit, :update, :destroy]

  # GET /parking_places
  # GET /parking_places.json
  def index
    #@parking_places = ParkingPlace.all
    @parking_places = ParkingPlace.where("user_id=" + current_user.id.to_s)
    @hash = Gmaps4rails.build_markers(@parking_places) do |parking_place, marker|
      marker.lat parking_place.georeference_x
      marker.lng parking_place.georeference_y
    end
  end

  # GET /parking_places/1
  # GET /parking_places/1.json
  def show
  end

  # GET /parking_places/new
  def new
    @parking_place = ParkingPlace.new
    @parking_place.user_id=current_user.id
  end

  # GET /parking_places/1/editate
  def edit
  end

  # POST /parking_places
  # POST /parking_places.json
  def create
    @parking_place = ParkingPlace.new(parking_place_params)

    respond_to do |format|
      if @parking_place.save
        format.html { redirect_to @parking_place, notice: 'Parking place was successfully created.' }
        format.json { render :show, status: :created, location: @parking_place }
      else
        format.html { render :new }
        format.json { render json: @parking_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_places/1
  # PATCH/PUT /parking_places/1.json
  def update
    respond_to do |format|
      if @parking_place.update(parking_place_params)
        format.html { redirect_to @parking_place, notice: 'Parking place was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_place }
      else
        format.html { render :edit }
        format.json { render json: @parking_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_places/1
  # DELETE /parking_places/1.json
  def destroy
    @parking_place.destroy
    respond_to do |format|
      format.html { redirect_to parking_places_url, notice: 'Parking place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_place
      @parking_place = ParkingPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_place_params
      params.require(:parking_place).permit(:description, :hourly_rate, :daily_rate, :weekly_rate, :monthly_rate, :spaces_number, :address, :georeference_x, :georeference_y, :parking_type_id, :owner_type_id, :organization_id, :user_id)
    end
end
