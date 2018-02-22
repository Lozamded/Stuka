class AddFechaVencimientoToInsumo < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :fecha_vencimiento, :date
  end
end
