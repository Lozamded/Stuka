class AddComentarioToPerros < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :comentario, :text
  end
end
