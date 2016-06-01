class HomeController < ApplicationController
  def index
     
     @q = ParkingPlace.ransack(params[:q])
     @parks = @q.result
  
    #Lista de los parques no reservados
    ids = Booking.all.map(&:parking_place_id).to_a
    
     @park =   @parks.where.not(id: ids)
     
     
     #@park =  ParkingPlace.all
  end
  
  def search
      
      @parking_places = ParkingPlace.search(params[:search_text]).result
      if @parking_places
          @current_mode = 'results'
      else
          @current_mode = 'default'
      end  
      
  end
  
  def filter 
   
     respond_to do |format|
       format.html{redirect_to action: :index}
     end
    
  end
end
