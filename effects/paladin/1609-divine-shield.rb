Effect.new("Divine Shield", 1609) do
  def type
    "defense"
  end
  def availability
    "group"
  end
  def duration
    599
  end
  def start_messages
   Regexp.union(
      %r{The warmth works its way toward you, and your shield arm feels much more nimble\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your skin grows slightly numb for a moment as the warm glow fades from around you\.},
    )
  end
  def mana_cost
    9
  end
end