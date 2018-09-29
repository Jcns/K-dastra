class CadProdutosController < ApplicationController
  before_action :set_cad_produto, only: [:show, :edit, :update]

  # GET /cad_produtos
  # GET /cad_produtos.json
  def index
    @cad_produtos = CadProduto.all
  end

  # GET /cad_produtos/1
  # GET /cad_produtos/1.json
  def show
  end

  # GET /cad_produtos/new
  def new
    @cad_produto = CadProduto.new
  end

  # GET /cad_produtos/1/edit
  def edit
  end

  # POST /cad_produtos
  # POST /cad_produtos.json
  def create
    @cad_produto = CadProduto.new(cad_produto_params)

    respond_to do |format|
      if @cad_produto.save
        format.html { redirect_to @cad_produto, notice: 'Cad produto was successfully created.' }
        format.json { render :show, status: :created, location: @cad_produto }
      else
        format.html { render :new }
        format.json { render json: @cad_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cad_produtos/1
  # PATCH/PUT /cad_produtos/1.json
  def update
    respond_to do |format|
      if @cad_produto.update(cad_produto_params)
        format.html { redirect_to @cad_produto, notice: 'Cad produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @cad_produto }
      else
        format.html { render :edit }
        format.json { render json: @cad_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cad_produtos/1
  # DELETE /cad_produtos/1.json
  def destroy
    @cad_produto.destroy
    respond_to do |format|
      format.html { redirect_to cad_produtos_url, notice: 'Cad produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cad_produto
      @cad_produto = CadProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cad_produto_params
      params.require(:cad_produto).permit(:categoria, :produto, :caracteristica, :user_id)
    end
end
