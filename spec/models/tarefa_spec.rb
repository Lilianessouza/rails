require 'rails_helper'

describe Tarefa do
  it 'valid descricao' do
   tarefa = Tarefa.new(descricao: 'toDo test', completa: 'false')

   expect(tarefa).to be_valid
 end
 it 'valid descricao nil' do
  tarefa = Tarefa.new(descricao: nil)
  tarefa.valid?
  expect(tarefa.errors[:descricao]).to include("can't be blank")
end
end
