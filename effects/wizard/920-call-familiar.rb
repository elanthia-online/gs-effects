Effect.new("Call Familiar", 920) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.wizard
  end
  def start_messages
   Regexp.union(
      %r{You (concentrate on the [a-z]+ talisman as you )?cast your conciousness out into the ether in search of a (specific type of )?familiar\.},
      %r{You feel the magical link between you and your (?:[\-\w+])[\-\s\w]* (?:grow stronger|strengthen)\.},
      %r{As you gaze into the depths of the tiny pool, you notice a faint tickle\.  It is almost as if the ring is drawing energy from your very being\.\.\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You sense the link between you and your (?:[\-\w+])[\-\s\w]* weaken and vanish\.},
    )
  end
  def mana_cost
    20
  end
end