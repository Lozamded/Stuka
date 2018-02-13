class AddPictureToPropietarios < ActiveRecord::Migration[5.1]
  def change
    add_column :propietarios, :picture, :string
  end
end
