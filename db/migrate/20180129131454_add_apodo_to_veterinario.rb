class AddApodoToVeterinario < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :apodo, :text
  end
end
