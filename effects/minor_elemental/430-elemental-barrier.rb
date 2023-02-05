Effect.new("Elemental Barrier", 430) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minorelemental
  end
  def start_messages
   Regexp.union(
      %r{Your skin tingles for a moment and you feel more secure\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The tingling sensation and sense of security leaves you\.},
    )
  end
  def mana_cost
    30
  end
end