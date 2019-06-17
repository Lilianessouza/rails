class Evento < ApplicationRecord
  belongs_to :tarefa, class_name: "Tarefa", foreign_key: "tarefas_id"
  validates :tipo, :dados, presence: true

  MENSAGENS_FELIZ = ['parabéns, você completou a tarefa! :)',
                     'muito bem, você completou a tarefa!',
                     'é isso ai, você completou a tarefa! ;)',
                     'você completou a tarefa, continue assim!',
                     'você completou a tarefa, é assim que se faz! :)'
                    ]

  MENSAGENS_TRISTE = ['ah que pena, você não completou a tarefa!',
                      'oh não, você não completou a tarefa!',
                      'você não completou a tarefa, poxa vida! :(',
                      'você não completou a tarefa, tente novamente! :(',
                      'que triste, você não completou a tarefa :(',
                     ]
end
