Effect.new("Wall of Thorns", 640) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You are surrounded by a (?:dense, )?writhing barrier of sharp thorns\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You seem to lose the thorny barrier that surrounds you\.},
    )
  end
  def mana_cost
    40
  end
end