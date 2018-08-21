class ScootersController < ApplicationController

  def index
    @scooters = Scooter.all
    @scooter= Scooter.new
  end

  def show
    @scooter = Scooter.find(params[:id])
  end


end

