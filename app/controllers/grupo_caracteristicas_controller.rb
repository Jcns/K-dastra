class GrupoCaracteristicasController < ApplicationController
  before_action :set_grupo_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /grupo_caracteristicas
  # GET /grupo_caracteristicas.json
  def index
    @grupo_caracteristicas = GrupoCaracteristica.all
  end

  # GET /grupo_caracteristicas/1
  # GET /grupo_caracteristicas/1.json
  def show
  end

  # GET /grupo_caracteristicas/new
  def new
    @grupo_caracteristica = GrupoCaracteristica.new
  end

  # GET /grupo_caracteristicas/1/edit
  def edit
  end

  # POST /grupo_caracteristicas
  # POST /grupo_caracteristicas.json
  def create
    @grupo_caracteristica = GrupoCaracteristica.new(grupo_caracteristica_params)

    respond_to do |format|
      if @grupo_caracteristica.save
        format.html { redirect_to @grupo_caracteristica, notice: 'Grupo caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_caracteristica }
      else
        format.html { render :new }
        format.json { render json: @grupo_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_caracteristicas/1
  # PATCH/PUT /grupo_caracteristicas/1.json
  def update
    respond_to do |format|
      if @grupo_caracteristica.update(grupo_caracteristica_params)
        format.html { redirect_to @grupo_caracteristica, notice: 'Grupo caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @grupo_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_caracteristicas/1
  # DELETE /grupo_caracteristicas/1.json
  def destroy
    @grupo_caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to grupo_caracteristicas_url, notice: 'Grupo caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_caracteristica
      @grupo_caracteristica = GrupoCaracteristica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_caracteristica_params
      params.require(:grupo_caracteristica).permit(:caracteristicas, :cadastro_produto_id)
    end
end
