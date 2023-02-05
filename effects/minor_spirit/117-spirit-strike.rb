Effect.new("Spirit Strike", 117) do
  def type
    "offense"
  end
  def availability
    "all"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{An invisible force guides you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The guiding force leaves you\.},
    )
  end
  def mana_cost
    17
  end
end