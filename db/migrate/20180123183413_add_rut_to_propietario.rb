class AddRutToPropietario < ActiveRecord::Migration[5.1]
  def change
    add_column :propietarios, :rut, :string
  end
end
