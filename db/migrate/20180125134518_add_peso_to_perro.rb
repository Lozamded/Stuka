class AddPesoToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :peso, :numeric
  end
end
