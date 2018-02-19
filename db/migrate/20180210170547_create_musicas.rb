class CreateMusicas < ActiveRecord::Migration[5.1]
  def change
    create_table :musicas do |t|
      t.string :titulo
      t.string :musico
      t.string :temas
      t.string :url_cifras
      t.text :cifras
      t.integer :popularidade

      t.timestamps
    end
  end
end
