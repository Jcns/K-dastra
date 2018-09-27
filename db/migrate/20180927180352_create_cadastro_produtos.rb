class CreateCadastroProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :cadastro_produtos do |t|
      t.string :categoria_produto
      t.string :produto

      t.timestamps
    end
  end
end
