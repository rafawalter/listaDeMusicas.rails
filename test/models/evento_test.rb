require 'test_helper'

class EventoTest < ActiveSupport::TestCase
  fixtures :eventos

  test 'evento deve ter representação textual adequada' do
    evento = eventos(:one)

    assert_equal evento.nome, evento.to_s
  end

  test 'evento deve ter representação textual mesmo sem atributos preenchidos' do
    evento = Evento.new

    assert_equal '<evento sem nome>', evento.to_s
  end
end
