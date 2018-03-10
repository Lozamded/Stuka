class RenameConsultaIdToConsultumIdInAnexos < ActiveRecord::Migration[5.1]
  def change
    rename_column :anexos, :consulta_id, :consultum_id
  end
end
