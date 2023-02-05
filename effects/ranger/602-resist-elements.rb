Effect.new("Resist Elements", 602) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{The air about you shimmers slightly\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The air about you stops shimmering\.},
    )
  end
  def mana_cost
    2
  end
end