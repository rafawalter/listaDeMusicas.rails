require 'test_helper'

class MusicasControllerTest < ActionDispatch::IntegrationTest
  fixtures :musicas

  setup do
    @musica = musicas(:one)
    @titulo_randomico = "Música #{rand(1000)}"
  end

  test "should get index" do
    get musicas_url
    assert_response :success

    assert_select 'h1', 'Músicas'
    assert_select '.musica', 3

    assert_select '.titulo', 'Fogo Suave'
    assert_select '.musico', 'Ziza Fernandes'
    assert_select '.temas', 'Espírito Santo'

    assert_select '.actions a', 'Show'
    assert_select '.actions a', 'Edit'
    assert_select '.actions a', 'Destroy'

    assert_select 'a', 'Nova Música'
  end

  test "should get new" do
    get new_musica_url
    assert_response :success

    assert_select 'h1', 'New Musica'

    assert_select 'input#musica_titulo'
    assert_select 'input#musica_musico'
    assert_select 'input#musica_temas'
    assert_select 'input#musica_url_cifras'
    assert_select 'textarea#musica_cifras'
    assert_select 'input#musica_popularidade'

    assert_select 'input[value="Create Musica"]'
    assert_select 'a', 'Back'

  end

  test "should create musica" do
    assert_difference('Musica.count') do
      post musicas_url, params: {musica: {
          titulo: @titulo_randomico,
          musico: @musica.musico,
          temas: @musica.temas,
          url_cifras: @musica.url_cifras,
          cifras: @musica.cifras,
          popularidade: @musica.popularidade,
      }}
    end

    assert_redirected_to musica_url(Musica.last)
  end

  test "should show musica" do
    get musica_url(@musica)
    assert_response :success

    assert_select '.musica .titulo'
    assert_select '.musica .musico'
    assert_select '.musica .temas'
    assert_select '.musica .url_cifras'
    assert_select '.musica .cifras'
    assert_select '.musica .popularidade'

    assert_select 'a', 'Edit'
    assert_select 'a', 'Back'
  end

  test "should get edit" do
    get edit_musica_url(@musica)
    assert_response :success

    assert_select 'input#musica_titulo'
    assert_select 'input#musica_musico'
    assert_select 'input#musica_temas'
    assert_select 'input#musica_url_cifras'
    assert_select 'textarea#musica_cifras'
    assert_select 'input#musica_popularidade'

    assert_select 'input[value="Update Musica"]'
    assert_select 'a', 'Show'
    assert_select 'a', 'Back'
  end

  test "should update musica" do
    patch musica_url(@musica), params: {musica: {
        titulo: @titulo_randomico,
        musico: @musica.musico,
        temas: @musica.temas,
        url_cifras: @musica.url_cifras,
        cifras: @musica.cifras,
        popularidade: @musica.popularidade,
    }}
    assert_redirected_to musica_url(@musica)
  end

  test "should destroy musica" do
    assert_difference('Musica.count', -1) do
      delete musica_url(@musica)
    end

    assert_redirected_to musicas_url
  end

end
