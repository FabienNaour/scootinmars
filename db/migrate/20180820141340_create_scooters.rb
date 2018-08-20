class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :marque
      t.string :modele
      t.integer :annee
      t.integer :kilometrage
      t.string :categorie
      t.boolean :permis
      t.boolean :disponible
      t.integer :prix
      t.references :boutique, foreign_key: true

      t.timestamps
    end
  end
end
