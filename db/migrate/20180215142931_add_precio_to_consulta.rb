class AddPrecioToConsulta < ActiveRecord::Migration[5.1]
  def change
    add_column :consulta, :precio, :bigint
  end
end
