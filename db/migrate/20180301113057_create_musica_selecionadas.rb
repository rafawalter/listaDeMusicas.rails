class CreateMusicaSelecionadas < ActiveRecord::Migration[5.1]
  def change
    create_table :musica_selecionadas do |t|
      t.string :momento
      t.references :musica, foreign_key: true
      t.belongs_to :evento, foreign_key: true

      t.timestamps
    end
  end
end
