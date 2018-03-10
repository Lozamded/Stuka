class CreateAnexos < ActiveRecord::Migration[5.1]
  def change
    create_table :anexos do |t|
      t.string :nombre
      t.string :file
      t.text :comentario
      t.references :consulta, foreign_key: true

      t.timestamps
    end
  end
end
