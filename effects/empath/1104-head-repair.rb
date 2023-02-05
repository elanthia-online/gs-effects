Effect.new("Head Repair", 1104) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if ([Wounds.head, Wounds.neck].max > 1) and (Spells.empath >= 9) then 9 else 4 end
  end
end