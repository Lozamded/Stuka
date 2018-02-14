class ConProc < ApplicationRecord
  belongs_to :consulta

  def to_s
    procedimiento
  end
end
