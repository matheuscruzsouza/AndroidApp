require 'spec_helper'

describe "AlunoDisciplinas" do
  describe "GET /aluno_disciplinas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get aluno_disciplinas_path
      response.status.should be(200)
    end
  end
end
