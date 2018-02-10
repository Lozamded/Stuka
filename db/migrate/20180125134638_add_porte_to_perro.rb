class AddPorteToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :porte, :text
  end
end
