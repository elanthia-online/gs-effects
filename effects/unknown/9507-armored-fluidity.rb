Effect.new("Armored Fluidity", 9507) do
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
      %r{(?:You adjust|[A-Z][a-z]+ adjusts) your .*?, making it easier for you to cast spells\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your .*? shifts out of place and feels somewhat more hindering\.$},
    )
  end
end