Effect.new("Spirit Defense", 103) do
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
      %r{You suddenly feel more powerful\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The powerful look leaves you\.},
    )
  end
  def mana_cost
    3
  end
end