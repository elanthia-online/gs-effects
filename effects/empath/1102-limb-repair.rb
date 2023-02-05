Effect.new("Limb Repair", 1102) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Wounds.limbs > 1) and (Spells.empath >= 7) then 7 else 2 end
  end
end