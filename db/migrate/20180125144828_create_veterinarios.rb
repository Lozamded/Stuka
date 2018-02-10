class CreateVeterinarios < ActiveRecord::Migration[5.1]
  def change
    create_table :veterinarios do |t|
      t.text :nombre
      t.date :fecha_nacimiento
      t.text :especialidad
      t.text :email
      t.text :telefono

      t.timestamps
    end
  end
end
