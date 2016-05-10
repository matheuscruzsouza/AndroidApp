class AlunoDisciplinasController < ApplicationController
  before_action :set_aluno_disciplina, only: [:show, :edit, :update, :destroy]

  # GET /aluno_disciplinas
  # GET /aluno_disciplinas.json
  def index
    @aluno_disciplinas = AlunoDisciplina.all
  end

  # GET /aluno_disciplinas/1
  # GET /aluno_disciplinas/1.json
  def show
  end

  # GET /aluno_disciplinas/new
  def new
    @aluno_disciplina = AlunoDisciplina.new
  end

  # GET /aluno_disciplinas/1/edit
  def edit
  end

  # POST /aluno_disciplinas
  # POST /aluno_disciplinas.json
  def create
    @aluno_disciplina = AlunoDisciplina.new(aluno_disciplina_params)

    respond_to do |format|
      if @aluno_disciplina.save
        format.html { redirect_to @aluno_disciplina, notice: 'Aluno disciplina was successfully created.' }
        format.json { render :show, status: :created, location: @aluno_disciplina }
      else
        format.html { render :new }
        format.json { render json: @aluno_disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluno_disciplinas/1
  # PATCH/PUT /aluno_disciplinas/1.json
  def update
    respond_to do |format|
      if @aluno_disciplina.update(aluno_disciplina_params)
        format.html { redirect_to @aluno_disciplina, notice: 'Aluno disciplina was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno_disciplina }
      else
        format.html { render :edit }
        format.json { render json: @aluno_disciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno_disciplinas/1
  # DELETE /aluno_disciplinas/1.json
  def destroy
    @aluno_disciplina.destroy
    respond_to do |format|
      format.html { redirect_to aluno_disciplinas_url, notice: 'Aluno disciplina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno_disciplina
      @aluno_disciplina = AlunoDisciplina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_disciplina_params
      params.require(:aluno_disciplina).permit(:aluno_id, :disciplina_id)
    end
end
