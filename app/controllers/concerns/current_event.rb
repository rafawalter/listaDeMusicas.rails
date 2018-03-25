module CurrentEvent

  private

  def obter_evento_selecionado
    @evento = Evento.find(session[:evento_id])
  rescue ActiveRecord::RecordNotFound
    @evento = Evento.create
    session[:evento_id] = @evento.id
    @evento
  end

  def selecionar_evento
    session[:evento_id] = @evento.id
  end

end