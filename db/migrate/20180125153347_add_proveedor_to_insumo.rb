class AddProveedorToInsumo < ActiveRecord::Migration[5.1]
  def change
    add_reference :insumos, :proveedor, foreign_key: true
  end
end
