Effect.new("Martial Prowess", 1705) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{You feel a wave of strength enter your muscles, and with it a newfound sense of confidence\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You are suddenly overcome by anxiety, but it quickly passes, leaving you feeling only slightly weaker and less assured than you were a moment ago\.},
    )
  end
  def mana_cost
    5
  end
end