json.array!(@aluno_disciplinas) do |aluno_disciplina|
  json.extract! aluno_disciplina, :id, :aluno_id, :disciplina_id, :disciplina
  json.url aluno_disciplina_url(aluno_disciplina, format: :json)
end
