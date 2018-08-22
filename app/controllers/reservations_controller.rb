class ReservationsController < ApplicationController
    before_action :find_scooter, only: [:new, :create]

  def index
    @reservations = Reservation.where(user_id: current_user).order(date_fin: :desc)
  end

  def show
    @reservation = Reservation.where(user_id: current_user)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.scooter = @scooter
    @reservation.save
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date_debut, :date_fin, :scooter_id)
  end

  def find_scooter
    @scooter = Scooter.find(params[:scooter_id])
  end
end
