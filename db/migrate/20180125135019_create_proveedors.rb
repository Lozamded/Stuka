class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.text :nombre
      t.text :descripcion
      t.text :email
      t.text :telefono

      t.timestamps
    end
  end
end
