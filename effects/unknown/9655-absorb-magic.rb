Effect.new("Absorb Magic", 9655) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    10/60.0
  end
  def start_messages
   Regexp.union(
      %r{You open yourself to the ravenous void at the core of your being, allowing it to surface\.  Muted veins of metallic grey ripple just beneath your skin\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The hunger of the void retreats within you, unsatisfied\.},
    )
  end
end