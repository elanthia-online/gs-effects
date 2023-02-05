Effect.new("Breeze", 612) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{A breeze stirs the air about you, swirling and tugging at your clothing\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The swirling breeze around you finally settles\.},
    )
  end
  def mana_cost
    12
  end
end