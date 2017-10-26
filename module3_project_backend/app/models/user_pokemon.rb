class UserPokemon < ApplicationRecord

  belongs_to :user
  belongs_to :pokemon

  # def initialize(hash, hp_change = 0, speed_change = 0, attack_change = 0, special_attack_change = 0, defense_change = 0, special_defense_change = 0)
  #   @user_id = hash[:user_id]
  #   @pokemon_id = hash[:pokemon_id]
  #   @hp_change = hp_change
  #   @speed_change = speed_change
  #   @attack_change = attack_change
  #   @special_attack_change = special_attack_change
  #   @defense_change = defense_change
  #   @special_defense_change = special_defense_change
  # end
# def initialize(hp_change: 0, speed_change: 0, attack_change: 0, special_attack_change: 0, defense_change: 0, special_defense_change: 0)
end
