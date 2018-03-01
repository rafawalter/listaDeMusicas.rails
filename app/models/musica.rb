class Musica < ApplicationRecord
  has_many :musica_selecionadas

  before_destroy :ensure_not_referenced_by_musica_selecionada

  validates :titulo, :temas, :cifras, presence: true
  validates :titulo, uniqueness: true
  validates :titulo, length: {minimum: 3}
  validates :popularidade, numericality: { greater_than_or_equal_to: 0.0 }, allow_blank: true
  validates :url_cifras, allow_blank: true, format: {
  	with: /\Ahttps?:\/\//
  }


  private

  def ensure_not_referenced_by_musica_selecionada
    unless musica_selecionadas.empty?
      errors.add :base, 'Foi selecionada para algum evento'
      throw :abort
    end
  end
end
