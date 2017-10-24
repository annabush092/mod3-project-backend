class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :front_default
      t.string :front_shiny
      t.string :back_default
      t.string :back_shiny
    end
  end
end
