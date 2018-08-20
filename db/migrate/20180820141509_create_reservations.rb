class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :date_debut
      t.integer :date_fin
      t.references :scooter, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
