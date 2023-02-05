Effect.new("Prismatic Guard", 905) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.wizard
  end
  def start_messages
   Regexp.union(
      %r{Multicolored rays shoot out of your body and flow into (?:the|a) shimmering sphere around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The shimmering multicolored sphere fades from around you\.},
    )
  end
  def mana_cost
    bonus=0;[5,11,18,26,35,45,56,68,81,95,110,126,143,161,180,200,221,243].each { |n| bonus += 1 if Skills.elearth >= n };5 + (((([Spells.wizard,Stats.level].min - 5) / 4.0).floor + bonus)/3.0).floor
  end
end