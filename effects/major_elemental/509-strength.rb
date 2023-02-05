Effect.new("Strength", 509) do
  def type
    "offense/utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{You feel much stronger\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your extra strength departing\.},
    )
  end
  def mana_cost
    9
  end
end