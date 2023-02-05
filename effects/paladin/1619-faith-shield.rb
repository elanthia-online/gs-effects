Effect.new("Faith Shield", 1619) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    dur = 0.5 + (Spells.paladin - 19) / 60.0; if dur > (70.0 / 60.0) then dur = (70.0 / 60.0) else dur end
  end
  def start_messages
   Regexp.union(
      %r{A muted pale blue sphere surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The muted pale blue sphere surrounding you flickers once and shudders before fading completely\.},
    )
  end
  def mana_cost
    19
  end
end