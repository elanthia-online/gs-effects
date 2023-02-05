Effect.new("Mind over Body", 1213) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    599
  end
  def start_messages
   Regexp.union(
      %r{Your muscles ripple momentarily and you suddenly become aware of a multitude of your body's processes\.  You feel an unnatural control over your breathing, heart rate and muscle tension\.(?:\s+Your group appears similarly affected\.)?},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your muscles begin to strain for an instant\.  The sense of body control has left you\.},
    )
  end
  def mana_cost
    13
  end
end