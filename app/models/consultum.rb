class Consultum < ApplicationRecord
    has_many :con_procs, dependent: :destroy
    accepts_nested_attributes_for :con_procs,
                                    reject_if: proc{ |attributes| attributes['procedimiento'].blank? },
                                    allow_destroy: true

    has_many :con_vets, dependent: :destroy
    accepts_nested_attributes_for :con_vets,
                                    reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                    allow_destroy: true

    has_many :con_ins, dependent: :destroy
    accepts_nested_attributes_for :con_ins,
                                    reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                    allow_destroy: true
    
    has_many :orden_examen, dependent: :destroy
    accepts_nested_attributes_for :orden_examen,
                                    reject_if: proc{ |attributes| attributes['proceso_examen'].blank? },
                                    allow_destroy: true

    has_many :anexos, dependent: :destroy
    accepts_nested_attributes_for :anexos,
                                    reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                    allow_destroy: true

    def to_s
        tipo
    end

end
