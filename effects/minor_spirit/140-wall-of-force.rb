Effect.new("Wall of Force", 140) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    1.5
  end
  def start_messages
   Regexp.union(
      %r{A wall of force surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The wall of force disappears from around you\.},
    )
  end
  def mana_cost
    40
  end
end