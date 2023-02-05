Effect.new("Vigor", 1616) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{The blood in your veins thickens and pulses with renewed life!},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel slightly weakened as the blood in your veins thins\.},
    )
  end
  def mana_cost
    16
  end
end