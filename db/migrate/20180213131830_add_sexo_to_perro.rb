class AddSexoToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :sexo, :string
  end
end
