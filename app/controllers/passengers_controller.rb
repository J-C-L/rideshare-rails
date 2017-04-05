class PassengersController < ApplicationController

  def index
    @passengers = Passenger.all
  end


  def new
     @passenger = Passenger.new
  end

  def create
    Passenger.create(passenger_params)
    redirect_to passengers_path
  end


  def show
    @passenger = Passenger.find(params[:id])
  end


  private
  def passenger_params
    return params.require(:passenger).permit(:name, :phone_number)
  end


end