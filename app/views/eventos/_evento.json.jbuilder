json.extract! evento, :id, :nome, :data, :topicos, :celebrante, :created_at, :updated_at
json.url evento_url(evento, format: :json)
