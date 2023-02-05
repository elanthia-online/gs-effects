Effect.new("Sigil of Intimidation", 9712) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def mana_cost
    if checkpcs.length > 1 then 10 else 5 end
  end
  def stamina_cost
    if checkpcs.length > 1 then 15 else 10 end
  end
end