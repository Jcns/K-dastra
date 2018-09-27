class CadastroProdsController < ApplicationController
  before_action :set_cadastro_prod, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_prods
  # GET /cadastro_prods.json
  def index
    @cadastro_prods = CadastroProd.all
  end

  # GET /cadastro_prods/1
  # GET /cadastro_prods/1.json
  def show
  end

  # GET /cadastro_prods/new
  def new
    @cadastro_prod = CadastroProd.new
  end

  # GET /cadastro_prods/1/edit
  def edit
  end

  # POST /cadastro_prods
  # POST /cadastro_prods.json
  def create
    @cadastro_prod = CadastroProd.new(cadastro_prod_params)

    respond_to do |format|
      if @cadastro_prod.save
        format.html { redirect_to @cadastro_prod, notice: 'Cadastro prod was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_prod }
      else
        format.html { render :new }
        format.json { render json: @cadastro_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_prods/1
  # PATCH/PUT /cadastro_prods/1.json
  def update
    respond_to do |format|
      if @cadastro_prod.update(cadastro_prod_params)
        format.html { redirect_to @cadastro_prod, notice: 'Cadastro prod was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_prod }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_prod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_prods/1
  # DELETE /cadastro_prods/1.json
  def destroy
    @cadastro_prod.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_prods_url, notice: 'Cadastro prod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_prod
      @cadastro_prod = CadastroProd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_prod_params
      params.require(:cadastro_prod).permit(:categoria, :produto, :preco, :info)
    end
end
