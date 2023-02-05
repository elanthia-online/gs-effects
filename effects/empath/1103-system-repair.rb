Effect.new("System Repair", 1103) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Wounds.nerves > 1) and (Spells.empath >= 8) then 8 else 3 end
  end
end