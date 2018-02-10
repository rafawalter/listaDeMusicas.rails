json.extract! musica, :id, :nome, :autor_e_compositor, :temas, :cifras, :popularidade, :created_at, :updated_at
json.url musica_url(musica, format: :json)
