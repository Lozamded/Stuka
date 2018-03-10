class AddConsultaIdToOrdenExamen < ActiveRecord::Migration[5.1]
  def change
    add_reference :orden_examen, :consulta, foreign_key: true
  end
end
