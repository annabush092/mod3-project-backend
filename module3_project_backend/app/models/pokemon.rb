class Pokemon < ApplicationRecord
  has_many :user_pokemons
  has_many :users, through: :user_pokemons
  has_many :pokemon_stats
  has_many :stats, through: :pokemon_stats
  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves
end
