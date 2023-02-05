Effect.new("Prayer of Protection", 303) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{A pure white aura sparkles around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{A white glow rushes away from you\.},
    )
  end
  def mana_cost
    3 + [(([Spells.cleric,Stats.level].min - 3) / 6),0].max
  end
end