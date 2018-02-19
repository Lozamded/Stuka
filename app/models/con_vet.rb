class ConVet < ApplicationRecord
    belongs_to :consulta, optional: true

    def to_s
        nombre
    end
end
