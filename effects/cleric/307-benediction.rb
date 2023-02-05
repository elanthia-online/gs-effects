Effect.new("Benediction", 307) do
  def type
    "offense/defense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{Your spirit is bolstered by a great sense of faith and conviction\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your sense of faith and conviction wanes\.(?:  You are less sure of yourself\.)?},
    )
  end
  def mana_cost
    7+[([Spells.cleric, 27].min-7)/2,0].max + [([Stats.level, Spells.cleric].min-27)/2, 0].max
  end
end