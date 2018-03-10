class Anexo < ApplicationRecord
  mount_uploader :file, FileUploader
  
  belongs_to :consulta
end
