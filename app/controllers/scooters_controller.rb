class ScootersController < ApplicationController
skip_before_action :authenticate_user! , only:[:index , :show]

  def index
    #raise
    @scooters = Scooter.all
    @scooter= Scooter.new

    if params[:search]
      sql_query = " \
        scooters.marque ILIKE :query \
        OR scooters.modele ILIKE :query \
        OR scooters.categorie ILIKE :query \
        "
        @scooters = @scooters.where(sql_query, query: "%#{params[:search][:query]}%") if params[:search][:query]
        @scooters = @scooters.where(boutique_id: params[:search][:boutique_id]) if params[:search][:boutique_id]

    end

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
    # @boutiques = Boutique.where.not(latitude: nil, longitude: nil)
    # @markers = @boutiques.map do |boutique|
    #   [
    #     boutique.longitude,
    #     boutique.latitude
    #   ]
    # end

    # MODIF FABIEN
    @boutiques = Boutique.where.not(latitude: nil, longitude: nil)
    @spots = @boutiques.map do |boutique|
      {
        name: boutique.nom,
        markers: [
          boutique.longitude,
          boutique.latitude
        ]
      }
      end
  end

  def show
    @scooter = Scooter.find(params[:id])
  end

end

