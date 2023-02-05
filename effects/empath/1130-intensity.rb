Effect.new("Intensity", 1130) do
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
      %r{You feel an intense resolve fill your mind, and concentrate on improving your efforts to guard yourself\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your intensity subsides\.},
    )
  end
  def mana_cost
    30 + ([(([Spells.empath,Stats.level].min-30)/2),0].max/3)
  end
end