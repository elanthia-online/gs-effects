Effect.new("Elemental Bias", 508) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{You feel more magically aware\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your extra magical awareness leave you\.},
    )
  end
  def mana_cost
    8
  end
end