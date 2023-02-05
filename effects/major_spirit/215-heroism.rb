Effect.new("Heroism", 215) do
  def type
    "offense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{A brilliant aura surrounds you and (?:sinks into your skin|your group)\.  You feel charged with extra vitality\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The brilliant aura fades away from you\.},
    )
  end
  def mana_cost
    15 + (Skills.slblessings / 30.0).round
  end
end