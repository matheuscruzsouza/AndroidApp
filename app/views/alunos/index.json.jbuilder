json.aluno(@alunos) do |aluno|
  json.extract! aluno, :id, :matricula, :nome, :sobrenome, :senha
  json.url aluno_url(aluno, format: :json)
end
