class AddAgresividadpersonasToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :agresividad_persona, :string
  end
end
