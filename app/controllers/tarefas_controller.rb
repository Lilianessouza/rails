class TarefasController < ApplicationController
  include ApplicationHelper

  before_action :current_tarefa, only: [:show, :edit, :update, :destroy]

  def index
    @tarefas = Tarefa.all
  end

  def show
  end

  def new
    @tarefa = Tarefa.new
  end

  def create
    tarefa = Tarefa.new(tarefa_params)
    if tarefa.save
      if tarefa_params[:completa] == '1'
        @mensagem = gerar_mensagem_feliz
        create_or_update_evento(tarefa, 'Congratulations', @mensagem)
      end

    else
      flash[:error] = 'falha ao criar tarefa!'
    end
    redirect_to tarefas_path
  end

  def edit
  end

  def update
    if @tarefa.update(tarefa_params)
      if tarefa_params[:completa] == '1'
        @mensagem = gerar_mensagem_feliz
        create_or_update_evento(@tarefa, 'Congratulations', @mensagem)
      else
        @mensagem = gerar_mensagem_triste
        create_or_update_evento(@tarefa, 'Shame', @mensagem)
      end
      @cor = @mensagem[:cor]
      flash[@cor] = @mensagem[:mensagem]
    else
      flash[:error] = 'falha ao atualizar tarefa!'
    end
    redirect_to tarefas_path
  end

  def destroy
    if @tarefa.destroy
      flash[:notice] = 'tarefa removida com sucesso!'
    else
      flash[:error] = 'falha ao remover tarefa!'
    end
    redirect_to tarefas_path
  end

  def create_or_update_evento(tarefa, tipo, dados)
    evento = Evento.where(tarefas_id: tarefa.id).first
    if evento
      evento.update(tipo: tipo, dados: dados)
    else
      Evento.create(tipo: tipo, dados: dados, tarefas_id: tarefa.id)
    end
  end

  private

  def tarefa_params
    params.require(:tarefa).permit(:descricao, :completa)
  end

  def current_tarefa
    @tarefa = Tarefa.find(params[:id])
  end
end
