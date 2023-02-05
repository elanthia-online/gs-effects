Effect.new("Organ Scar Repair", 1114) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if (Scars.torso > 1) and (Spells.empath >= 18) then 18 else 14 end
  end
end