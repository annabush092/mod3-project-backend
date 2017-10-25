class MoveSerializer < ActiveModel::Serializer
  attributes :id, :name, :flavor_text

  has_many :pokemons
  has_many :stats
end
