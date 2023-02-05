Effect.new("Lesser Shroud", 120) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minorspiritual
  end
  def start_messages
   Regexp.union(
      %r{You suddenly feel a lot more powerful\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The very powerful look leaves you\.},
    )
  end
  def mana_cost
    20 + (([[Spells.minorspiritual,Stats.level].min - 20,0].max) / 6.0).round
  end
end