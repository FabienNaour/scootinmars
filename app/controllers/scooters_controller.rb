class ScootersController < ApplicationController
skip_before_action :authenticate_user! , only:[:index , :show]
  def index
    @scooters = Scooter.all
    @scooter= Scooter.new

    # GOOGLE
    # @boutiques = Boutique.where.not(latitude: nil, longitude: nil)
    # @markers = @boutiques.map do |boutique|
    #   {
    #     lat: boutique.latitude,
    #     lng: boutique.longitude#,
    #     #infoWindow: { content: render_to_string(partial: "/boutiques/map_box", locals: { flat: flat }) }
    #   }
    # end
    # MAPBOX
    @boutiques = Boutique.where.not(latitude: nil, longitude: nil)
    @markers = @boutiques.map do |boutique|
      [
        boutique.longitude,
        boutique.latitude
      ]
    end
  end

  def show
    @scooter = Scooter.find(params[:id])
  end
end

