class Perro < ApplicationRecord

  mount_uploader :picture, PictureUploader
  
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos,
                                  reject_if: proc{ |attributes| attributes['titulo'].blank? },
                                  allow_destroy: true

  has_many :suceso_perros, dependent: :destroy
  accepts_nested_attributes_for :suceso_perros,
                                  reject_if: proc{ |attributes| attributes['suceso'].blank? },
                                  allow_destroy: true
end
