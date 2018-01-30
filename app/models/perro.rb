class Perro < ApplicationRecord
  belongs_to :propietario
  #accepts_nested_attributes_for :propietario, reject_if: :all_blank, allow_destroy: true;
end
