class AddConsultaToBoleta < ActiveRecord::Migration[5.1]
  def change
    add_reference :boleta, :consulta, foreign_key: true
  end
end
