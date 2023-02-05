Effect.new("Rapid Fire Recovery", 599) do
  def availability
    "self-cast"
  end
  def duration
    if Skills.emc >= 199; 0; else; 1 + (((90 - (Skills.emc/2.2)).ceil + 1) / 60.0); end
  end
  def end_messages
    Regexp.union(
      %r{You notice the feeling of elemental fatigue fade away\.},
      %r{Moisture beads on the surface of your skin then evaporates away, taking with it your recent elemental fatigue\.},
    )
  end
end