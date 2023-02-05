Effect.new("Spirit Fog", 106) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minorspiritual
  end
  def mana_cost
    6
  end
end