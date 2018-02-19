class NowController < ApplicationController
  def index
    @musicas = Musica.order :titulo
  end
end
