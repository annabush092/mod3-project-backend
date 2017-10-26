class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  attribute :myPokemon

  def myPokemon
    object.user_pokemons.map do |up|
      {
        pokemon_id: up.pokemon_id,
        pokemon_name: up.pokemon.name,
        hp_change: up.hp_change,
        speed_change: up.speed_change,
        attack_change: up.attack_change,
        special_attack_change: up.special_attack_change,
        defense_change: up.defense_change,
        special_defense_change: up.special_defense_change
      }
    end
  end

end
