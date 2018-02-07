class AddFechaDefuncionToPerros < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :fecha_defuncion, :date
  end
end
