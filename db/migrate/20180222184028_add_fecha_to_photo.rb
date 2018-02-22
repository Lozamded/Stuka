class AddFechaToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :fecha, :date
    add_column :photos, :comentario, :text
  end
end
