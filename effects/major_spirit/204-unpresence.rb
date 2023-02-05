Effect.new("Unpresence", 204) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{You feel more secure\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel less secure\.},
    )
  end
  def mana_cost
    4
  end
end