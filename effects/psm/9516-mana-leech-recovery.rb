Effect.new("Mana Leech Recovery", 9516) do
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
      %r{You feel a sudden rush of power as you absorb [0-9]+ mana!},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer feel the effect of casting mana leech\.},
    )
  end
end