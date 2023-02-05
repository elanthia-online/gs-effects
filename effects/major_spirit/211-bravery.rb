Effect.new("Bravery", 211) do
  def type
    "offense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{You (?:and your group stand tall and )?feel more confident\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel less confident\.},
    )
  end
  def mana_cost
    11
  end
end