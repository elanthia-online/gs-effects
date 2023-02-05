Effect.new("Disease Resistance", 104) do
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
      %r{You feel a strengthening of your internal fortitude\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You lose your extra internal fortitude\.},
    )
  end
  def mana_cost
    4
  end
end