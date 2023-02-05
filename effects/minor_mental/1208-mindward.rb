Effect.new("Mindward", 1208) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{You feel your forehead pulse as your mind hardens to deter invading thoughts\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your forehead pulse as your mind relaxes\.},
    )
  end
  def mana_cost
    8 + ([([([Spells.minormental,Stats.level].min - 8), 0].max/2), 20].min/2)
  end
end