class PlatesController < ApplicationController
  
  def show
    @web = Web.find(params[:id])
    @plates = @web.plates
  end
  
  def new
    @plate = Plate.new
  end
  
  def create 
    @plate = Plate.new(plate_params)
    if @plate.save
      redirect_to @plate
    else
      render 'new'
    end
  end
  
end
