class AddCantidadactualToProducto < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :cantidad_actual, :numeric
  end
end
