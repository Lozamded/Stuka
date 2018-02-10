class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.text :nombre
      t.text :tipo
      t.text :presentacion
      t.bigint :precio

      t.timestamps
    end
  end
end
