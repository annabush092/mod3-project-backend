class StatSerializer < ActiveModel::Serializer
  attributes :id, :name



  # has_many :pokemon_stats, serializer: PokemonStatSerializer
  # has_many :pokemon
end
