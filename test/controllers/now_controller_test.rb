require 'test_helper'

class NowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get now_index_url
    assert_response :success

    assert_select 'nav.side_nav a', minimun: 4
    assert_select 'main ul.musicas li', 3
    assert_select 'h2', 'Fogo Suave'
    assert_select '.temas', /\w+/
  end

end
