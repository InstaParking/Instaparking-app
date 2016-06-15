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
  
end
