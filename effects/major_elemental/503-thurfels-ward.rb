Effect.new("Thurfel's Ward", 503) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{Glowing specks of \w+ \w+ energy begin to spin around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The glowing specks of energy surrounding you suddenly shoot off in all directions, then quickly fade away\.},
    )
  end
  def mana_cost
    3 + (([Spells.majorelemental,Stats.level].min - 3) / 12.0).round
  end
  def mana_cost
    3
  end
end