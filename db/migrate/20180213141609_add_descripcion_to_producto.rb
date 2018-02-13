class AddDescripcionToProducto < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :descripcion, :text
  end
end
