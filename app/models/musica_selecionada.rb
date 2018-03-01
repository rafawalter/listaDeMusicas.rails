class MusicaSelecionada < ApplicationRecord
  belongs_to :musica
  belongs_to :evento
end
