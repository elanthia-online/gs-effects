Effect.new("Organ Repair", 1105) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Wounds.torso > 1) and (Spells.empath >= 10) then 10 else 5 end
  end
end