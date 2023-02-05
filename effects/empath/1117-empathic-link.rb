Effect.new("Empathic Link", 1117) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def mana_cost
    8 + (Stats.level/10)
  end
end