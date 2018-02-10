class AddSocioToPerro < ActiveRecord::Migration[5.1]
  def change
    add_reference :perros, :socio, foreign_key: true
  end
end
