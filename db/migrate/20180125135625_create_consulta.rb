class CreateConsulta < ActiveRecord::Migration[5.1]
  def change
    create_table :consulta do |t|
      t.date :fecha
      t.text :tipo

      t.timestamps
    end
  end
end
