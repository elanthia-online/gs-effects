Effect.new("Elemental Focus", 513) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{You bristle with energy\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer bristle with energy\.},
    )
  end
  def mana_cost
    13 + (([Spells.majorelemental,Stats.level].min - 13)/2)
  end
end