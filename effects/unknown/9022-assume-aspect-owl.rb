Effect.new("AA: Owl", 9022) do
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
      %r{You concentrate your focus upon the Aspect of the Owl\.  .*A dawn of enlightenment rises over your consciousness, honing your comprehension of the flows of magic around and within you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The moment of enlightenment and magical comprehension fades from your mind\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end