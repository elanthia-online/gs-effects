Effect.new("Natural Colors", 601) do
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
      %r{You(?: and your group)? seem to blend into the surroundings better\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You return to normal color\.},
    )
  end
  def mana_cost
    1
  end
end