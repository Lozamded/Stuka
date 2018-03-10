class CreateSucesoPerros < ActiveRecord::Migration[5.1]
  def change
    create_table :suceso_perros do |t|
      t.string :suceso
      t.string :involucrado
      t.string :fecha
      t.references :perro, foreign_key: true
      t.references :socio, foreign_key: true
      t.references :propietario, foreign_key: true

      t.timestamps
    end
  end
end
