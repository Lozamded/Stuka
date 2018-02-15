class CreateConVets < ActiveRecord::Migration[5.1]
  def change
    create_table :con_vets do |t|
      t.string :nombre
      t.references :consulta, foreign_key: true

      t.timestamps
    end
  end
end
