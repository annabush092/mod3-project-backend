x = Api.new

moveCounter = 388

1.times do
  moveJson = x.get_move_from_api(moveCounter)
  puts moveJson
  x.create_move(moveJson)
  moveCounter += 1
end

# statCounter = 1
#
# 8.times do
# stat = x.get_stats_from_api(statCounter)
# # x.create_stat(stat)
# x.create_stat_moves(stat)
# statCounter +=1
# end

# pokeCounter = 1
#
# 10.times do
#   pokemon = x.get_pokemon_from_api(pokeCounter)
#   x.create_pokemon(pokemon)
#   x.create_pokemon_stats(pokemon)
#   x.create_pokemon_moves(pokemon)
#   pokeCounter +=1
# end
