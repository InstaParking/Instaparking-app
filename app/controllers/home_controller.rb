class HomeController < ApplicationController
  def index
     
     @q = ParkingPlace.ransack(params[:q])
     @parks = @q.result
  
    #Lista de los parques no reservados
    ids = Booking.all.map(&:parking_place_id).to_a
    
     @park =   @parks.where.not(id: ids)
     
     
     #@park =  ParkingPlace.all
  end
  
  def filter 
   
     respond_to do |format|
       format.html{redirect_to action: :index}
     end
    
  end
end
