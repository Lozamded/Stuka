class AddPrecioToConProcs < ActiveRecord::Migration[5.1]
  def change
    add_column :con_procs, :precio, :bigint
  end
end
