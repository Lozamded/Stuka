class RenameConsultaIdtoConsultumIdInConVet < ActiveRecord::Migration[5.1]
  def change
    rename_column :con_vets, :consulta_id, :consultum_id
  end
end
