require 'test_helper'

class MusicaSelecionadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musica_selecionada = musica_selecionadas(:one)
  end

  test "should get index" do
    get musica_selecionadas_url
    assert_response :success
  end

  test "should get new" do
    get new_musica_selecionada_url
    assert_response :success
  end

  test "should create musica_selecionada" do
    assert_difference('MusicaSelecionada.count') do
      post musica_selecionadas_url, params: { musica_selecionada: { evento_id: @musica_selecionada.evento_id, momento: @musica_selecionada.momento, musica_id: @musica_selecionada.musica_id } }
    end

    assert_redirected_to musica_selecionada_url(MusicaSelecionada.last)
  end

  test "should show musica_selecionada" do
    get musica_selecionada_url(@musica_selecionada)
    assert_response :success
  end

  test "should get edit" do
    get edit_musica_selecionada_url(@musica_selecionada)
    assert_response :success
  end

  test "should update musica_selecionada" do
    patch musica_selecionada_url(@musica_selecionada), params: { musica_selecionada: { evento_id: @musica_selecionada.evento_id, momento: @musica_selecionada.momento, musica_id: @musica_selecionada.musica_id } }
    assert_redirected_to musica_selecionada_url(@musica_selecionada)
  end

  test "should destroy musica_selecionada" do
    assert_difference('MusicaSelecionada.count', -1) do
      delete musica_selecionada_url(@musica_selecionada)
    end

    assert_redirected_to musica_selecionadas_url
  end
end
