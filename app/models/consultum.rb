class Consultum < ApplicationRecord
    has_many :veterinarios
    has_many :procedimientos
    has_many :insumos
end
