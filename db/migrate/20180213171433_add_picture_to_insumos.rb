class AddPictureToInsumos < ActiveRecord::Migration[5.1]
  def change
    add_column :insumos, :picture, :string
  end
end
