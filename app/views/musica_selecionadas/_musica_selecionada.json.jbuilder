json.extract! musica_selecionada, :id, :momento, :musica_id, :evento_id, :created_at, :updated_at
json.url musica_selecionada_url(musica_selecionada, format: :json)
