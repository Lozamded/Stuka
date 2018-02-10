class CreateSocios < ActiveRecord::Migration[5.1]
  def change
    create_table :socios do |t|
      t.text :nombre
      t.text :rut
      t.bigint :aporte
      t.date :fecha_nacimiento
      t.text :email
      t.text :direccion
      t.text :comuna

      t.timestamps
    end
  end
end
