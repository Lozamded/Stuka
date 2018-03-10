class SucesoPerro < ApplicationRecord
  belongs_to :perro
  belongs_to :socio, optional: true
  belongs_to :propietario, optional: true
end
