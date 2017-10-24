class Api

  def get_pokemon_from_api(pokemon)
  	json = RestClient.get("http://pokeapi.co/api/v2/pokemon/#{pokemon}")
  	JSON.parse(json)
  end

  def create_pokemon(pokeJson)
    Pokemon.create({
      name: pokeJson["species"]["name"],
      front_default: pokeJson["sprites"]["front_default"],
      front_shiny: pokeJson["sprites"]["front_shiny"],
      back_default: pokeJson["sprites"]["back_default"],
      back_shiny: pokeJson["sprites"]["back_shiny"]
      })
  end

  def create_pokemon_stats(pokeJson)
    pokeJson['stats'].each do |stat|
      PokemonStat.create({
        stat_id: stat["stat"]["url"].split("/").last.to_i,
        pokemon_id: pokeJson["id"].to_i,
        base_stat: stat['base_stat'].to_i
      })
    end
  end

  def create_pokemon_moves(pokeJson)
    pokeJson['moves'].each do |move|
      PokemonMove.create({
        pokemon_id: pokeJson["id"].to_i,
        move_id: move['move']['url'].split("/").last.to_i
        })
    end
  end

  def get_stats_from_api(stat)
    json = RestClient.get("http://pokeapi.co/api/v2/stat/#{stat}")
  	JSON.parse(json)
  end

  def create_stat(jsonStat)
    Stat.create({
      name: jsonStat["name"]
      })
  end

  def create_stat_moves(jsonStat)
    jsonStat["affecting_moves"]["increase"].each do |move|
      self.populate_stat_move(jsonStat, move)
    end

    jsonStat["affecting_moves"]["decrease"].each do |move|
      self.populate_stat_move(jsonStat, move)
    end
  end

  def populate_stat_move(jsonStat, move)
    StatMove.create({
      stat_id: jsonStat["id"].to_i,
      move_id: move["move"]["url"].split("/").last.to_i,
      stat_change: move["change"].to_i
      })
  end

  def get_move_from_api(move)
    json = RestClient.get("http://pokeapi.co/api/v2/move/#{move}")
  	JSON.parse(json)
  end

  def create_move(jsonMove)
    Move.create({
      name: jsonMove["names"][2]["name"],
      flavor_text: jsonMove["flavor_text_entries"][2]["flavor_text"]
      })
  end

end
