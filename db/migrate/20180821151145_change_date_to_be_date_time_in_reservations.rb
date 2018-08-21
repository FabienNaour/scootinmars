class ChangeDateToBeDateTimeInReservations < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :date_debut, :string
    change_column :reservations, :date_fin, :string
  end
end
