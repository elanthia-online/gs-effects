Effect.new("Iron Skin", 1202) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{You feel your skin grow tight all across your body and your complexion takes on a .*? quality\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the tension in your skin ease and notice that your complexion returns to normal\.},
    )
  end
  def mana_cost
    2
  end
end