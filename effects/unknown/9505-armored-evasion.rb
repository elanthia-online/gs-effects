Effect.new("Armored Evasion", 9505) do
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
      %r{(?:You adjust|[A-Z][a-z]+ adjusts) your .*?, improving its comfort and maneuverability\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your .*? shifts out of place and feels much less comfortable than before\.},
    )
  end
end