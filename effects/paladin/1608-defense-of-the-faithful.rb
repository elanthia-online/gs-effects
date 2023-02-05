Effect.new("Defense of the Faithful", 1608) do
  def type
    "defense/utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{Motes of lambent white-gold light appear and begin to swirl around you, coalescing into a radiant aura.|Wisps of lucent silvered ebon smoke appear and begin to twist around you, coalescing into an incandescent veil.|Fingers of fog-hued mist appear and begin to twirl around you, coalescing into a scintillant miasma.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The (?:aura of lambent white-gold light motes|haze of lucent silvered ebon smoke|miasma of fog-hued mist) surrounding you dissipates slowly, (?:winking out of existence|thinning until nonexistent|waning until completely diminished).},
    )
  end
  def mana_cost
    8
  end
end