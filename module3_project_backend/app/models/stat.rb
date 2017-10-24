class Stat < ApplicationRecord
  has_many :pokemon_stats
  has_many :pokemon, through: :pokemon_stats
  has_many :stat_moves
  has_many :moves, through: :stat_moves
end
