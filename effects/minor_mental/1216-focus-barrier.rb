Effect.new("Focus Barrier", 1216) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    599
  end
  def start_messages
   Regexp.union(
      %r{A barrier of force forms around you(?: and your group)?\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The barrier of force around you dissipates\.},
    )
  end
  def mana_cost
    16
  end
end