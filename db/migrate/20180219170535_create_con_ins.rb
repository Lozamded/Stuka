class CreateConIns < ActiveRecord::Migration[5.1]
  def change
    create_table :con_ins do |t|
      t.string :nombre
      t.numeric :cant_actual
      t.references :consulta, foreign_key: true

      t.timestamps
    end
  end
end
