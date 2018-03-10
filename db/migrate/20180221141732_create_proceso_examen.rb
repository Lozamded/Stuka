class CreateProcesoExamen < ActiveRecord::Migration[5.1]
  def change
    create_table :proceso_examen do |t|
      t.string :proceso

      t.timestamps
    end
  end
end
