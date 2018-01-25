class CreateProcedimientos < ActiveRecord::Migration[5.1]
  def change
    create_table :procedimientos do |t|
      t.text :descripcion
      t.bigint :precio
      t.bigint :precio_sruka
      t.string :precio_costo

      t.timestamps
    end
  end
end
