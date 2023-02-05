Effect.new("Warding Sphere", 310) do
  def type
    "defense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{You feel more secure basking in the glow of divine protection\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You suddenly feel less protected\.},
    )
  end
  def mana_cost
    10 + [[(Spells.cleric - 10)/2, 10].min,0].max
  end
end