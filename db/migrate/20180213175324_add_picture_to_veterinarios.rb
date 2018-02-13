class AddPictureToVeterinarios < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :picture, :string
  end
end
