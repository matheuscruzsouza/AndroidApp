require "spec_helper"

describe AlunoDisciplinasController do
  describe "routing" do

    it "routes to #index" do
      get("/aluno_disciplinas").should route_to("aluno_disciplinas#index")
    end

    it "routes to #new" do
      get("/aluno_disciplinas/new").should route_to("aluno_disciplinas#new")
    end

    it "routes to #show" do
      get("/aluno_disciplinas/1").should route_to("aluno_disciplinas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aluno_disciplinas/1/edit").should route_to("aluno_disciplinas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aluno_disciplinas").should route_to("aluno_disciplinas#create")
    end

    it "routes to #update" do
      put("/aluno_disciplinas/1").should route_to("aluno_disciplinas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aluno_disciplinas/1").should route_to("aluno_disciplinas#destroy", :id => "1")
    end

  end
end
