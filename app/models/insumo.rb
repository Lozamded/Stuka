class Insumo < ApplicationRecord
    belongs_to :proveedor
    mount_uploader :picture, PictureUploader
end
