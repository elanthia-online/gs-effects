Effect.new("Elemental Targeting", 425) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minorelemental
  end
  def start_messages
   Regexp.union(
      %r{You are filled with a sense of great confidence\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel less confident than before\.},
    )
  end
  def mana_cost
    25
  end
end