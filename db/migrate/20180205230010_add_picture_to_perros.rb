class AddPictureToPerros < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :picture, :string
  end
end
