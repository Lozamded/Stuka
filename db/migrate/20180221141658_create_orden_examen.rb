class CreateOrdenExamen < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_examen do |t|
      t.string :proceso_examen
      t.bigint :plazo_examen
      t.date :fecha_examen
      t.text :comentario

      t.timestamps
    end
  end
end
