class Perro < ApplicationRecord
  belongs_to :propietario
  mount_uploader :picture, PictureUploader
  #accepts_nested_attributes_for :propietario, reject_if: :all_blank, allow_destroy: true;
end
