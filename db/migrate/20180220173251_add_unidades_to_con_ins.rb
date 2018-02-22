class AddUnidadesToConIns < ActiveRecord::Migration[5.1]
  def change
    add_column :con_ins, :unidades, :numeric
  end
end
