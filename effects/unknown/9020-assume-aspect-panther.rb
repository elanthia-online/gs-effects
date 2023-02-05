Effect.new("AA: Panther", 9020) do
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
      %r{You concentrate your focus upon the Aspect of the Panther\.  .*A distinct awareness of the shadows surfaces to your thoughts, springing forth with the lucidity of a once-forgotten memory\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your extra awareness of the shadows steals away back into the recesses of your subconscious\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end