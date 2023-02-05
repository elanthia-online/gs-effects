Effect.new("Haste", 535) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + [Spells.majorelemental, Stats.level].min
  end
  def start_messages
   Regexp.union(
      %r{You begin to notice the world slow down around you\.  Strange\.},
      %r{The world stutters around you for a moment, then resumes its slower speed\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You notice that things have returned to their normal speed\.},
    )
  end
  def mana_cost
    35
  end
end