Effect.new("AA: Spider", 9040) do
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
      %r{You concentrate your focus upon the Aspect of the Spider\.  .*You feel a tingling sensation shiver through your limbs as your field of vision darkens and expands\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your field of vision returns to normal as the tingling sensation in your limbs scatters away\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end