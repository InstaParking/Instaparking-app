class PagesController < ApplicationController
  def about_us
  end

  def faq
  end

  def contact_us
  end
  
  def opinion
      #Lista de opiniones
      @feedbacks = Feedback.all
    
  end
  
  def recibidas
      #Lista de reservas
      #@bookings = Booking.all
      @bookings = Booking.joins(:parking_place).where("parking_places.user_id=" + current_user.id.to_s)
  end
  
  def busqueda
      @q = ParkingPlace.ransack(params[:q])
      @parks = @q.result
      
      #Lista de los parques no reservados
      ids = Booking.all.map(&:parking_place_id).to_a
    
      @park =   @parks.where.not(id: ids)
      
      @hash = Gmaps4rails.build_markers(@park) do |parking_place, marker|
      marker.lat parking_place.georeference_x
      marker.lng parking_place.georeference_y
    end
      
  end
  
  def dashboard
    @booking_made = Booking.where("user_id=" + current_user.id.to_s).count
    @booking_received = Booking.joins(:parking_place).where("parking_places.user_id=" + current_user.id.to_s).count
  end

  
end
