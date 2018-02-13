class Propietario < ApplicationRecord
   has_many :perros
   mount_uploader :picture, PictureUploader
end
