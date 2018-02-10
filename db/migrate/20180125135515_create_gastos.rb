class CreateGastos < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos do |t|
      t.text :descripcion
      t.bigint :precio

      t.timestamps
    end
  end
end
