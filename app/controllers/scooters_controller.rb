class ScootersController < ApplicationController
skip_before_action :authenticate_user! , only:[:index , :show]
  def index
    @scooters = Scooter.all
    @scooter= Scooter.new
  end

  def show
    @scooter = Scooter.find(params[:id])
  end


end

