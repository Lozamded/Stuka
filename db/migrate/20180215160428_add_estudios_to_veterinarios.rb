class AddEstudiosToVeterinarios < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :estudios, :string
  end
end
