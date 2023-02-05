Effect.new("AA: Wolf", 9014) do
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
      %r{You concentrate your focus upon the Aspect of the Wolf\.  .*Your vision takes on a slightly yellow hue, and you feel a stronger center of coordination and balance\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The golden distortion fades from your sight, and your balance returns to normal\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end