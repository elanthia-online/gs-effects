Effect.new("Elemental Defense III", 414) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minorelemental
  end
  def start_messages
   Regexp.union(
      %r{A brilliant luminescence surrounds you(?: and your group)?\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The brilliant luminescence fades from around you\.},
    )
  end
  def mana_cost
    14
  end
end