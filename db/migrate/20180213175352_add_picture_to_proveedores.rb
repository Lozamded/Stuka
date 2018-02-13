class AddPictureToProveedores < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :picture, :string
  end
end
