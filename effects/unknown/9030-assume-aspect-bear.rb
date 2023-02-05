Effect.new("AA: Bear", 9030) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{You concentrate your focus upon the Aspect of the Bear\.  .*You hear a deep bellowing reverberate through your mind, inspiring an invigorating fortitude that spreads to your very core\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your ursine fortitude parts, returning your endurance to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end