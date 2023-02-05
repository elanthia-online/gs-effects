Effect.new("Phoen's Strength", 606) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{Your body suddenly fills with a warm strength\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the inner strength leave you\.},
    )
  end
  def mana_cost
    6
  end
end