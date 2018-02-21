json.extract! musica, :id, :titulo, :musico, :temas, :url_cifras, :cifras, :popularidade, :created_at, :updated_at
json.url musica_url(musica, format: :json)
