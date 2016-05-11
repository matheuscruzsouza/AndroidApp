json.disciplina(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :descricao, :professor_id, :aulas
  json.url disciplina_url(disciplina, format: :json)
end
