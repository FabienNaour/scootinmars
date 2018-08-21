class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.integer :age
      t.boolean :permis

      t.timestamps
    end
  end
end
