class AddProcedimientoToConsulta < ActiveRecord::Migration[5.1]
  def change
    add_reference :consulta, :procedimiento, foreign_key: true
  end
end
