Effect.new("Armor Reinforcement", 9509) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{(?:You adjust|[A-Z][a-z]+ adjusts) your .*?, reinforcing weak spots\.},
    )
  end
end