Effect.new("Spirit Warding II", 107) do
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
      %r{A deep blue glow surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The deep blue glow leaves you\.},
    )
  end
  def mana_cost
    7
  end
end