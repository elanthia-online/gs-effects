Effect.new("Patron's Blessing", 1611) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{An unbridled power surges through you, infusing your body with might and improving your reactions\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your abilities diminish as the energy provided by your patron fades from around you\.},
    )
  end
  def mana_cost
    11 + ((([Spells.paladin,Stats.level].min - 11) * 0.75).round / 3).round
  end
end