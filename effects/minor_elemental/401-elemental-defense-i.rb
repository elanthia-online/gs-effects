Effect.new("Elemental Defense I", 401) do
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
      %r{A silvery luminescence surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The silvery luminescence fades from around you\.},
    )
  end
  def mana_cost
    1
  end
end