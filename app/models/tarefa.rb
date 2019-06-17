class Tarefa < ApplicationRecord
  has_many :eventos
  validates :descricao, presence: true
  validates :completa, inclusion: { in: [ true, false ] }
end
