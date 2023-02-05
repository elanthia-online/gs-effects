Effect.new("AA: Mantis", 9036) do
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
      %r{You concentrate your focus upon the Aspect of the Mantis\.  .*A slightly uncomfortable pressure builds behind your eyes as you note an improved eyesight and renewed vigor in your weapon arm\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the pressure behind your eyes relent, as the movement in your weapon arm returns to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end