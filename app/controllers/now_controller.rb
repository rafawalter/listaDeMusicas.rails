class NowController < ApplicationController
  include CurrentEvent

  def index
    @evento = obter_evento_selecionado if @evento.nil?
  end
end
