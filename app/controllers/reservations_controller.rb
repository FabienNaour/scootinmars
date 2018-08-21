class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @reservation.user
    @reservation.scooter
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user
    @reservation.save
    redirect_to reservations_index_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date_debut, :date_fin, :scooter_id)
  end

end
