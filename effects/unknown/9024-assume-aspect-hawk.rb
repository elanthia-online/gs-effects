Effect.new("AA: Hawk", 9024) do
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
      %r{You concentrate your focus upon the Aspect of the Hawk\.  .*You become more aware of the environs as every nuance of your surroundings comes into focus with sharp clarity\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The degree of resolution in your vision diminishes as your perception returns to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end