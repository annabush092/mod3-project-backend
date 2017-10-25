class PokemonStatSerializer < ActiveModel::Serializer
  attributes :stat_id, :pokemon_id, :base_stat

  belongs_to :stat
  belongs_to :pokemon
end
