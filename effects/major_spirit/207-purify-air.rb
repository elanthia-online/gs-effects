Effect.new("Purify Air", 207) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{You begin to breathe more deeply\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your breathing becomes more shallow\.},
    )
  end
  def mana_cost
    7
  end
end