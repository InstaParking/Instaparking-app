class ParkingTypesController < ApplicationController
  before_action :set_parking_type, only: [:show, :edit, :update, :destroy]

  # GET /parking_types
  # GET /parking_types.json
  def index
    @parking_types = ParkingType.all
    
  end

  # GET /parking_types/1
  # GET /parking_types/1.json
  def show
  end

  # GET /parking_types/new
  def new
    @parking_type = ParkingType.new
  end

  # GET /parking_types/1/edit
  def edit
  end

  # POST /parking_types
  # POST /parking_types.json
  def create
    @parking_type = ParkingType.new(parking_type_params)

    respond_to do |format|
      if @parking_type.save
        format.html { redirect_to @parking_type, notice: 'Parking type was successfully created.' }
        format.json { render :show, status: :created, location: @parking_type }
      else
        format.html { render :new }
        format.json { render json: @parking_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_types/1
  # PATCH/PUT /parking_types/1.json
  def update
    respond_to do |format|
      if @parking_type.update(parking_type_params)
        format.html { redirect_to @parking_type, notice: 'Parking type was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_type }
      else
        format.html { render :edit }
        format.json { render json: @parking_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_types/1
  # DELETE /parking_types/1.json
  def destroy
    @parking_type.destroy
    respond_to do |format|
      format.html { redirect_to parking_types_url, notice: 'Parking type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_type
      @parking_type = ParkingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_type_params
      params.require(:parking_type).permit(:name, :description)
    end
end
