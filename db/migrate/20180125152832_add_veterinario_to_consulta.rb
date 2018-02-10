class AddVeterinarioToConsulta < ActiveRecord::Migration[5.1]
  def change
    add_reference :consulta, :veterinario, foreign_key: true
  end
end
