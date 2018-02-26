class RenameConsultaIdToConsultumIdInOrdenExamen < ActiveRecord::Migration[5.1]
  def change
    rename_column :orden_examen, :consulta_id, :consultum_id
  end
end
