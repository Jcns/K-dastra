json.extract! cadastro_produto, :id, :categoria_produto, :produto, :created_at, :updated_at
json.url cadastro_produto_url(cadastro_produto, format: :json)
