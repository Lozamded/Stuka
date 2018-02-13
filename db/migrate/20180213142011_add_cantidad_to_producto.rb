class AddCantidadToProducto < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :cantidad, :numeric
  end
end
