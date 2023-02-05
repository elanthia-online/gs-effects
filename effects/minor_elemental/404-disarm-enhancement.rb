Effect.new("Disarm Enhancement", 404) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    0.5 + Stats.level / 60.0
  end
  def start_messages
   Regexp.union(
      %r{You become calm and focused\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The focused look leaves you\.},
    )
  end
  def mana_cost
    4
  end
end