Effect.new("Elemental Transfer Protection", 9079) do
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
      %r{A thin coating of elemental energy sinks into you, keeping minor fluctuations in elemental energy at bay\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your thin coating of elemental energy dissipates away\.},
    )
  end
end