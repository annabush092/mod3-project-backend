class CreateUserPokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :user_pokemons do |t|
      t.integer :user_id
      t.integer :pokemon_id
      t.integer :hp_change, default: 0
      t.integer :speed_change, default: 0
      t.integer :attack_change, default: 0
      t.integer :special_attack_change, default: 0
      t.integer :defense_change, default: 0
      t.integer :special_defense_change, default: 0
    end
  end
end
