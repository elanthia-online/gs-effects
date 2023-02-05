Effect.new("Armored Stealth", 9508) do
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
      %r{(?:You adjust|[A-Z][a-z]+ adjusts) your .*? to cushion your movements\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your .*? shifts out of place and no longer cushions your movements\.},
    )
  end
end