Effect.new("Mass Elemental Defense", 419) do
  def type
    "defense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.minorelemental
  end
  def mana_cost
    19
  end
end