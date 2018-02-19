class Musica < ApplicationRecord
  validates :titulo, :temas, :cifras, presence: true
  validates :titulo, uniqueness: true
  validates :titulo, length: {minimum: 3}
  validates :popularidade, numericality: { greater_than_or_equal_to: 0.0 }, allow_blank: true
  validates :url_cifras, allow_blank: true, format: {
  	with: /\Ahttps?:\/\//
  }
end
