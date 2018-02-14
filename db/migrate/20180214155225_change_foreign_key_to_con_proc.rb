class ChangeForeignKeyToConProc < ActiveRecord::Migration[5.1]
  def change
    rename_column :con_procs, :consulta_id, :consultum_id
  end
end
