class ConProc < ApplicationRecord
  belongs_to :consulta, optional: true

  def to_s
    procedimiento
  end
end
