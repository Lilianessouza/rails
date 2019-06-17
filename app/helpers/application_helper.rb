module ApplicationHelper
  CORES = ['#7B68EE', '#6A5ACD', '#800000', '#2F4F4F']

  def gerar_mensagem_feliz
    {
      mensagem: Evento::MENSAGENS_FELIZ.sample,
      cor: CORES.sample
    }
  end

  def gerar_mensagem_triste
    {
      mensagem: Evento::MENSAGENS_TRISTE.sample,
      cor: CORES.sample
    }
  end
end
