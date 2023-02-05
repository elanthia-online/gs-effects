Effect.new("Rapid Fire Penalty", 597) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You feel the magic surge through you, but the feeling of fatigue lingers\.},
    )
  end
end