class CreatePropietarios < ActiveRecord::Migration[5.1]
  def change
    create_table :propietarios do |t|
      t.string :nombre
      t.date :fecha_nacimiento
      t.string :email
      t.string :telefono
      t.string :direccion
      t.string :comuna

      t.timestamps
    end
  end
end
