Effect.new("Soul Ward", 319) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{Drawing deep from the well of your soul, you summon forth a thread of your essence and weave it into an evanescent shield to shroud your form\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The air about you shimmers momentarily before the evanescent shield surrounding you collapses\.},
    )
  end
  def mana_cost
    19
  end
end