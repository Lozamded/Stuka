class CreateConProcs < ActiveRecord::Migration[5.1]
  def change
    create_table :con_procs do |t|
      t.string :procedimiento 
      t.references :consulta, foreign_key: true

      t.timestamps
    end
  end
end
