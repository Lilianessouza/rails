class CreateTarefas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarefas do |t|
      t.string :descricao
      t.boolean :completa, default: false
    end
  end
end
