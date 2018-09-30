class CadProduto < ApplicationRecord
  has_attached_file :imagem, styles: { large: "600x600", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/
  acts_as_paranoid
  belongs_to :user
end
