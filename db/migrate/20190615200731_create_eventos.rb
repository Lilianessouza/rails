class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :tipo
      t.string :dados
      t.references :tarefas, index: true
    end
  end
end
