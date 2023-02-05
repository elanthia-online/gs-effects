Effect.new("Temporal Reversion", 540) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{For a moment, everything you hear and see echoes weirdly around you, but then everything seems normal again\.  Your personal temporal reality has been slightly offset from the true flow of time\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Abruptly, everything you see and hear comes into better focus\.  Your personal temporal reality has rejoined the true flow of time\.},
    )
  end
  def mana_cost
    40
  end
end