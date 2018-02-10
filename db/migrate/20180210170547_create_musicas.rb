class CreateMusicas < ActiveRecord::Migration[5.1]
  def change
    create_table :musicas do |t|
      t.string :nome
      t.string :autor_e_compositor
      t.string :temas
      t.text :cifras
      t.integer :popularidade

      t.timestamps
    end
  end
end
