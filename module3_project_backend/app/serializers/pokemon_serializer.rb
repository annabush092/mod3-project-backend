class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :front_default, :front_shiny, :back_default, :back_shiny

  attribute :all_stats
  attribute :all_moves

  def all_stats
    object.pokemon_stats.map do |pokeStat|
      {base_stat: pokeStat.base_stat,
      stat_name: pokeStat.stat.name,
      stat_id: pokeStat.stat_id}
    end
  end

  def all_moves
    object.moves.map do |move|
      {move: move.name,
      flavor_text: move.flavor_text,
      stat_change: move.stat_moves.map do |move|
      {"#{move.stat.name}": move.stat_change}
      end,
      move_id: move.id}
    end
  end

  private

  def getStatChange
    object.move.stat_moves.map do |move|
    move.stat_change
    end
  end

end
