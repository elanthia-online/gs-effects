Effect.new("Corrupt Essence", 703) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def duration
    0.33
  end
  def start_messages
   Regexp.union(
      %r{You feel weakened as a blood red haze forms around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The blood red haze dissipates from around you\.},
    )
  end
  def mana_cost
    3
  end
end