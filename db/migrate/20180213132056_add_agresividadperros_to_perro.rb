class AddAgresividadperrosToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :agresividad_perro, :string
  end
end
