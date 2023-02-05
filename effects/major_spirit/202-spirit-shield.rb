Effect.new("Spirit Shield", 202) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20+Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{A dim aura surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The dim aura fades from around you\.},
    )
  end
  def mana_cost
    [2+(([Spells.majorspiritual,Stats.level].min-2)/6),2].max
  end
end