Effect.new("Mobility", 618) do
  def type
    "defense/utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You suddenly feel much more dextrous\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer feel so dextrous\.},
    )
  end
  def mana_cost
    18+((Spells.ranger-18)/5)
  end
end