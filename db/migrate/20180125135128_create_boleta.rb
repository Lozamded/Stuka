class CreateBoleta < ActiveRecord::Migration[5.1]
  def change
    create_table :boleta do |t|
      t.date :fecha
      t.bigint :valor
      t.text :descripcion

      t.timestamps
    end
  end
end
