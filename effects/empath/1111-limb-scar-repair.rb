Effect.new("Limb Scar Repair", 1111) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Scars.limbs > 1) and (Spells.empath >= 15) then 15 else 11 end
  end
end