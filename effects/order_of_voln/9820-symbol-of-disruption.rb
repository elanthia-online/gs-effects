Effect.new("Symbol of Disruption", 9820) do
  def type
    "offensive"
  end
  def availability
    "all"
  end
  def duration
    Society.rank / 6.0
  end
  def start_messages
   Regexp.union(
      %r{A churning spectral aura surrounds you(?: and your group)?\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The churning spectral aura suddenly vanishes from around you\.},
    )
  end
end