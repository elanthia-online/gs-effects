Effect.new("AA: Porcupine", 9028) do
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
      %r{You concentrate your focus upon the Aspect of the Porcupine\.  .*A simple cognition bubbles to the front of your mind, broadening your understanding of events that previously went unnoticed\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your increased cognition fades away, returning your comprehension to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end