json.array!(@professores) do |professor|
  json.extract! professor, :id, :matricula, :nome, :sobrenome, :senha
  json.url professor_url(professor, format: :json)
end
