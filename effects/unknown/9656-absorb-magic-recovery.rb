Effect.new("Absorb Magic Recovery", 9656) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    30/60.0
  end
  def start_messages
   Regexp.union(
      %r{You open yourself to the ravenous void at the core of your being, allowing it to surface\.  Muted veins of metallic grey ripple just beneath your skin\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Something within you loosens, and you can once again feel the hunger of the void within\.},
    )
  end
end