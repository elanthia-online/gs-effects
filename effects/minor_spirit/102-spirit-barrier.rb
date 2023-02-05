Effect.new("Spirit Barrier", 102) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minorspiritual
  end
  def start_messages
   Regexp.union(
      %r{The air thickens and begins to swirl around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The air calms down around you\.},
    )
  end
  def mana_cost
    2 + (([Spells.minorspiritual,Stats.level].min - 2) / 6)
  end
end