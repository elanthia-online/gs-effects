Effect.new("Poison Resistance", 105) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minorspiritual
  end
  def start_messages
   Regexp.union(
      %r{You feel a strengthening of your blood flow\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You notice your blood flow go back to normal\.},
    )
  end
  def mana_cost
    5
  end
end