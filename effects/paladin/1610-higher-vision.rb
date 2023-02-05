Effect.new("Higher Vision", 1610) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{Visions of future battles fill your eyes, providing you with knowledge of conflicts yet unfought\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You lose a bit of focus as the knowledge of future battles drifts from your mind\.},
    )
  end
  def mana_cost
    cost = 10; cost += (([Spells.paladin,Stats.level].min - 10) / 2).round; if cost > 55 then cost = 55 end; cost
  end
end