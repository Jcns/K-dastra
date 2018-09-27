class CadastroProdutosController < ApplicationController
  before_action :set_cadastro_produto, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_produtos
  # GET /cadastro_produtos.json
  def index
    @cadastro_produtos = CadastroProduto.all
  end

  # GET /cadastro_produtos/1
  # GET /cadastro_produtos/1.json
  def show
  end

  # GET /cadastro_produtos/new
  def new
    @cadastro_produto = CadastroProduto.new
  end

  # GET /cadastro_produtos/1/edit
  def edit
  end

  # POST /cadastro_produtos
  # POST /cadastro_produtos.json
  def create
    @cadastro_produto = CadastroProduto.new(cadastro_produto_params)

    respond_to do |format|
      if @cadastro_produto.save
        format.html { redirect_to @cadastro_produto, notice: 'Cadastro produto was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_produto }
      else
        format.html { render :new }
        format.json { render json: @cadastro_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_produtos/1
  # PATCH/PUT /cadastro_produtos/1.json
  def update
    respond_to do |format|
      if @cadastro_produto.update(cadastro_produto_params)
        format.html { redirect_to @cadastro_produto, notice: 'Cadastro produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_produto }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_produtos/1
  # DELETE /cadastro_produtos/1.json
  def destroy
    @cadastro_produto.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_produtos_url, notice: 'Cadastro produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_produto
      @cadastro_produto = CadastroProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_produto_params
      params.require(:cadastro_produto).permit(:categoria_produto, :produto)
    end
end
