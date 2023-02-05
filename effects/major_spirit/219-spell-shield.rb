Effect.new("Spell Shield", 219) do
  def type
    "defense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{An opalescent aura surrounds you(?: and your group)?\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The opalescent aura fades from around you\.},
    )
  end
  def mana_cost
    19
  end
end