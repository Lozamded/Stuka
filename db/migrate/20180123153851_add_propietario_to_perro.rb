class AddPropietarioToPerro < ActiveRecord::Migration[5.1]
  def change
    add_reference :perros, :propietario, foreign_key: true
  end
end
