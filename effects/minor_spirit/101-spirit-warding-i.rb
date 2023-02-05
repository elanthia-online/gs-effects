Effect.new("Spirit Warding I", 101) do
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
      %r{A light blue glow surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The light blue glow leaves you\.},
    )
  end
  def mana_cost
    1
  end
end