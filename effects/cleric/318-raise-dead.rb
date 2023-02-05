Effect.new("Raise Dead", 318) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if Spells.cleric >= 40 then 40 elsif Spells.cleric >= 25 then 25 else 18 end
  end
  def spirit_cost
    if Spells.cleric >= 40 then 3 elsif Spells.cleric >= 25 then 5 else 8 end
  end
end