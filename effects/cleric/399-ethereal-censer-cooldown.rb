Effect.new("Ethereal Censer Cooldown", 399) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{As the fragrant haze settles over you, you feel revitalized\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You sense the flows of mana around you are once again strong enough to support the manifestation of an ethereal censer\.},
    )
  end
end