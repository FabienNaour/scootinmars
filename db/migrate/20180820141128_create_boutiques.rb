class CreateBoutiques < ActiveRecord::Migration[5.2]
  def change
    create_table :boutiques do |t|
      t.string :nom
      t.string :adresse
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
