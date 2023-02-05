Effect.new("Armor Support", 9504) do
  def type
    "bonus"
  end
  def availability
    "all"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{(?:You adjust|[A-Z][a-z]+ adjusts) your .*?, improving its ability to support the weight of your gear\.},
    )
  end
end