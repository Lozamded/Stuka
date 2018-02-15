class AddTipoToVeterinarios < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :tipo, :string
  end
end
