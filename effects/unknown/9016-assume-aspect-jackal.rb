Effect.new("AA: Jackal", 9016) do
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
      %r{You concentrate your focus upon the Aspect of the Jackal\.  .*A twinge of red passes through your eyes, as your thoughts turn toward waylaying your next quarry\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The redness fades from your eyes as your focus of the hunt returns to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end