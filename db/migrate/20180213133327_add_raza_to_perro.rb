class AddRazaToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :raza, :string
  end
end
