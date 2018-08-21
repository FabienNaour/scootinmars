class AddPermisToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :docpermis, :string
  end
end
