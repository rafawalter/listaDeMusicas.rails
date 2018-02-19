require 'test_helper'

class MusicaTest < ActiveSupport::TestCase
  fixtures :musicas

  test 'campos obrigratórios de uma música' do
  	musica = Musica.new
  	assert musica.invalid?

  	assert musica.errors[:titulo].any?
  	assert musica.errors[:temas].any?
  	assert musica.errors[:cifras].any?
  end

  test 'popularidade deve ser maior ou igual a zero' do
    musica = Musica.new(
      titulo: 'Uma música bem legal',
      temas: 'só se for agora',
      cifras: 'C F G'
    )

   	musica.popularidade = -1
   	assert musica.invalid?
   	assert_equal ['must be greater than or equal to 0.0'], musica.errors[:popularidade]   

   	musica.popularidade = 0
   	assert musica.valid?

   	musica.popularidade = 1
   	assert musica.valid?
  end

  def nova_musica(url_cifras)
  	Musica.new(
      titulo: 'Que incrível!',
      temas: 'animada, festa',
      cifras: 'D G A',
      url_cifras: url_cifras
  	)
  end

  test 'url_cifras' do
    ok = %w[https://www.cifraclub.com.br/comunidade-catolica-colo-de-deus/yeshua/]
    bad = %w[sbrubles nome@dominio.com.br yeshua]

    ok.each do |url_cifra|
      assert nova_musica(url_cifra).valid?, "#{url_cifra} deve ser válida"
    end

    bad.each do |url_cifra|
      assert nova_musica(url_cifra).invalid?, "#{url_cifra} deve ser inválida"
    end
  end

  test 'título da música deve ser único - i18n' do
    musica = Musica.new(
      titulo: musicas(:fogo_suave).titulo,
      musico: 'Ziza Fernandes',
      temas: 'diversos temas',
      cifras: 'C F G'
    )
    assert musica.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], musica.errors[:titulo]
  end

  test 'título da música deve ter pelo menos 3 caracteres' do
    musica = Musica.new(
      titulo: '12',
      musico: 'John Williams',
      temas: 'teste',
      cifras: 'C F G'
    )

    assert musica.invalid?

    mensagem_esperada = I18n.translate('errors.messages.too_short.other', {count:3})
    assert_equal [mensagem_esperada], musica.errors[:titulo]
  end
end
