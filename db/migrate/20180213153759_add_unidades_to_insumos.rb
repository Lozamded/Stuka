class AddUnidadesToInsumos < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :unidades, :bigint
  end
end
