json.array!(@aulas) do |aula|
  json.extract! aula, :id, :data_abertura, :conteudo, :disciplina_id
  json.url aula_url(aula, format: :json)
end
