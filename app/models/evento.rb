class Evento < ApplicationRecord
  has_many :musica_selecionadas, dependent: :destroy

  def to_s
    nome || '<evento sem nome>'
  end
end
