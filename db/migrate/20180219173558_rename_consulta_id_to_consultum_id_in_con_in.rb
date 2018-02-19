class RenameConsultaIdToConsultumIdInConIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :con_ins, :consulta_id, :consultum_id
  end
end
