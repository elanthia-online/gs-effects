Effect.new("Water Walking", 112) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minorspiritual
  end
  def start_messages
   Regexp.union(
      %r{A misty halo surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The misty halo fades from you\.},
    )
  end
  def mana_cost
    12
  end
end