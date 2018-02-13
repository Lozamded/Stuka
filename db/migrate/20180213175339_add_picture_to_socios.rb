class AddPictureToSocios < ActiveRecord::Migration[5.1]
  def change
    add_column :socios, :picture, :string
  end
end
