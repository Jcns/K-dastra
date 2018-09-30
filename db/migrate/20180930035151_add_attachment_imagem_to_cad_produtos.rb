class AddAttachmentImagemToCadProdutos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :cad_produtos do |t|
      t.attachment :imagem
    end
  end

  def self.down
    remove_attachment :cad_produtos, :imagem
  end
end
