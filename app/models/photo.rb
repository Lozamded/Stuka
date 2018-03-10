class Photo < ApplicationRecord
  belongs_to :perro
  
  mount_uploader :picture, PictureUploader
end
