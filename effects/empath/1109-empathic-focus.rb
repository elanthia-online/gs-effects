Effect.new("Empathic Focus", 1109) do
  def type
    "offense/defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.empath
  end
  def start_messages
   Regexp.union(
      %r{You center yourself and (?:focus|renew) your concentration\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your mind's keen focus fades away\.},
    )
  end
  def mana_cost
    9 + [(([Spells.empath,Stats.level].min - 9) / 6.0).round,0].max
  end
end