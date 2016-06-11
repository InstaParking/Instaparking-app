class PagesController < ApplicationController
  def about_us
  end

  def faq
  end

  def contact_us
  end
  
  def opinion
  end
  
  def busqueda
      @q = ParkingPlace.ransack(params[:q])
      @parks = @q.result
      
      #Lista de los parques no reservados
      ids = Booking.all.map(&:parking_place_id).to_a
    
     @park =   @parks.where.not(id: ids)
      
  end
  
end
