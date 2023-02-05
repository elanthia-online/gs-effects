Effect.new("Fasthr's Reward", 115) do
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
      %r{A dull golden nimbus surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The dull golden nimbus fades from around you\.},
    )
  end
  def mana_cost
    15
  end
end