Effect.new("Elemental Aura Stabilization", 9078) do
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
      %r{Elemental energy wraps around you, stabilizing your aura\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The elemental energy stabilizing your aura dissipates\.},
    )
  end
end