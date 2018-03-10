class OrdenExaman < ApplicationRecord
    belongs_to :consulta, optional: true
end
