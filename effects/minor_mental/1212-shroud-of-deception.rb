Effect.new("Shroud of Deception", 1212) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{Your appearance shimmers briefly\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your appearance briefly shimmers\.},
    )
  end
  def mana_cost
    12
  end
end