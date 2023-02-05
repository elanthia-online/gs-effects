Effect.new("System Scar Repair", 1112) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Scars.nerves > 1) and (Spells.empath >= 16) then 16 else 12 end
  end
end