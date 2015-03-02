class DeparturesController < ApplicationController

  def create
    @flight = Flight.find(params[:flight_id])
    @arrival = @flight.create_departure(departure_params)
    redirect_to flight_path(@flight)
  end

  def departure_params
    params.require(:departure).permit(:date, :status)
  end

end
