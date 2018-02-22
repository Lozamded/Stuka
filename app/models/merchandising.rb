class Merchandising < ApplicationRecord
  belongs_to :proveedor, optional: true

  mount_uploader :picture, PictureUploader
end
