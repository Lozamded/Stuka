class AddSenasToPerro < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :senas, :text
  end
end
