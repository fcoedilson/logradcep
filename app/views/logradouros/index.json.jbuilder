json.array!(@logradouros) do |logradouro|
  json.extract! logradouro, :id, :nome, :cep, :num_inicio, :num_fim
  json.url logradouro_url(logradouro, format: :json)
end
