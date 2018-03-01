class Evento < ApplicationRecord
  has_many :musica_selecionadas, dependent: :destroy
end
