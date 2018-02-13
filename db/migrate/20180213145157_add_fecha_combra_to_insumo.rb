class AddFechaCombraToInsumo < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :fecha_compra, :date
  end
end
