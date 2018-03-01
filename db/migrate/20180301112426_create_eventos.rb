class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.datetime :data
      t.string :topicos
      t.string :celebrante

      t.timestamps
    end
  end
end
