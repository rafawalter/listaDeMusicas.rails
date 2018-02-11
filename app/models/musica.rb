class Musica < ApplicationRecord
  validates :nome, :temas, :cifras, presence: true
  validates :nome, uniqueness: true  
  validates :popularidade, numericality: { greater_than_or_equal_to: 0.0 }, allow_blank: true
end
