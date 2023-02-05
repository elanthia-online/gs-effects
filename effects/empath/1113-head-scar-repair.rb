Effect.new("Head Scar Repair", 1113) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def mana_cost
    if ([Scars.head,Scars.neck].max > 1) and (Spells.empath >= 17) then 17 else 13 end
  end
end