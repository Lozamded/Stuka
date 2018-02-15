class AddCasaEstudiosToVeterinarios < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :casa_estudios, :string
  end
end
