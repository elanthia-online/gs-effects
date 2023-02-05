Effect.new("Elemental Defense II", 406) do
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
      %r{A bright luminescence surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The bright luminescence fades from around you\.},
    )
  end
  def mana_cost
    6
  end
end