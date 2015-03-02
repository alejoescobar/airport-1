class ArrivalsController < ApplicationController

  def create
    @flight = Flight.find(params[:flight_id])
    @arrival = @flight.create_arrival(arrival_params)
    redirect_to flight_path(@flight)
  end

  def arrival_params
    params.require(:arrival).permit(:date, :status)
  end
end
