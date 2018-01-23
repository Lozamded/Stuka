class CreatePerros < ActiveRecord::Migration[5.1]
  def change
    create_table :perros do |t|
      t.string :nombre
      t.date :fecha_ingreso
      t.date :fecha_nacimiento
      t.date :fecha_adopcion

      t.timestamps
    end
  end
end
