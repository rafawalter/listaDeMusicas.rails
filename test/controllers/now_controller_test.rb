require 'test_helper'

class NowControllerTest < ActionDispatch::IntegrationTest
  fixtures :eventos, :musicas, :musica_selecionadas

  test "deve inicar com evento vazio" do
    get now_index_url
    assert_response :success

    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main h1', 'Músicas para <evento sem nome>'
    assert_select 'main ul.musicas li', 0
  end

end
