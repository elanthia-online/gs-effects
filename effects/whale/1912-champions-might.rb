Effect.new("Champion's Might", 1912) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20
  end
  def start_messages
   Regexp.union(
      %r{A dim celadon wisp flares briefly about each of your hands, trailing soft pulses of residual light as they move\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The dim celadon wisps about your hands flare up once more and fade completely away\.},
    )
  end
  def mana_cost
    12
  end
end