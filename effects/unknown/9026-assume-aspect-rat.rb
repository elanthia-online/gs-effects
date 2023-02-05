Effect.new("AA: Rat", 9026) do
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
      %r{You concentrate your focus upon the Aspect of the Rat\.  .*Your thoughts drift inward, girding your mind with a strong determination and your body with great agility\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The strong sense of determination and agility fades from within you\.},
    )
  end
  def mana_cost
    Spell[650].active ? 25 : 50
  end
end