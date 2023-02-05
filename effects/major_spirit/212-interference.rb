Effect.new("Interference", 212) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def end_messages
    Regexp.union(
      %r{The distracting force passes away from you\.},
    )
  end
  def mana_cost
    12
  end
end