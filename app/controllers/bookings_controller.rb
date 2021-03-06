class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :recibidas]
  before_action :authenticate_user!, only: [:new]

  # GET /bookings
  # GET /bookings.json
  def index
    #@bookings = Booking.all
    @bookings = Booking.where("user_id=" + current_user.id.to_s)
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    if params[:id].nil?
    @booking = Booking.new
  else 
    @id = params[:id]
    @booking = Booking.new
    @booking.parking_place_id = @id
    @booking.user_id=current_user.id
    end
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.user_id=current_user.id
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:booking_date, :start_date, :finish_date, :vehicle_plate, :amount_payable, :booking_status_id, :payment_type_id, :parking_place_id, :user_id)
    end
end
