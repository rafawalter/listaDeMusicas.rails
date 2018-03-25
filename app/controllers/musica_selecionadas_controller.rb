class MusicaSelecionadasController < ApplicationController
  include CurrentEvent

  before_action :obter_evento_selecionado, only: [:create]
  before_action :set_musica_selecionada, only: [:show, :edit, :update, :destroy]

  # GET /musica_selecionadas
  # GET /musica_selecionadas.json
  def index
    @musica_selecionadas = MusicaSelecionada.all
  end

  # GET /musica_selecionadas/1
  # GET /musica_selecionadas/1.json
  def show
  end

  # GET /musica_selecionadas/new
  def new
    @musica_selecionada = MusicaSelecionada.new
  end

  # GET /musica_selecionadas/1/edit
  def edit
  end

  # POST /musica_selecionadas
  # POST /musica_selecionadas.json
  def create
    musica = Musica.find(params[:musica_id])
    @musica_selecionada = @evento.musica_selecionadas.build(
      musica: musica,
      momento: params[:momento] || '<momento não nomeado>'
    )

    respond_to do |format|
      if @musica_selecionada.save
        format.html { redirect_to @musica_selecionada.evento, notice: 'Musica selecionada was successfully created.' }
        format.json { render :show, status: :created, location: @musica_selecionada }
      else
        format.html { render :new }
        format.json { render json: @musica_selecionada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musica_selecionadas/1
  # PATCH/PUT /musica_selecionadas/1.json
  def update
    respond_to do |format|
      if @musica_selecionada.update(musica_selecionada_params)
        format.html { redirect_to @musica_selecionada, notice: 'Musica selecionada was successfully updated.' }
        format.json { render :show, status: :ok, location: @musica_selecionada }
      else
        format.html { render :edit }
        format.json { render json: @musica_selecionada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musica_selecionadas/1
  # DELETE /musica_selecionadas/1.json
  def destroy
    @musica_selecionada.destroy
    respond_to do |format|
      format.html { redirect_to musica_selecionadas_url, notice: 'Musica selecionada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musica_selecionada
      @musica_selecionada = MusicaSelecionada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musica_selecionada_params
      params.require(:musica_selecionada).permit(:momento, :musica_id, :evento_id)
    end
end
