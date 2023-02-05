Effect.new("Tremors", 909) do
  def type
    "attack/area/utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.wizard
  end
  def start_messages
   Regexp.union(
      %r{Faint ripples in the (?:dirt|floor|ground|ice|muck|sand|snow|soil) form beneath you for a moment\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Faint ripples in the (?:dirt|floor|ground|ice|muck|sand|snow|soil) beneath you become apparent before quickly dissipating\.},
    )
  end
  def mana_cost
    9
  end
end