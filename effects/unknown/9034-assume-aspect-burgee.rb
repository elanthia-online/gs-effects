Effect.new("AA: Burgee", 9034) do
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
      %r{You concentrate your focus upon the Aspect of the Burgee\.  .*Grey-green diamond scales form across your skin, and you note that your shield arm feels somehow lighter\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The grey-green scales fade away from your skin, with your shield arm,s reflexes returning to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end