Effect.new("Blink", 1215) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{A momentary eruption of starlit darkness engulfs you\.  As the shadow thins, double images of the world sway dizzyingly around you before regaining solidity\.$|^A momentary eruption of a flurry of squeaking bats engulfs you, flapping with a frenzy of shrill squeaks and chitters as they cyclone wildly about you. \s?As the bats wing away into the sky, double images of the world sway dizzyingly around you before regaining solidity\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Darkness punctuated by a constellation of starry pinpoints wells up to the surface of your skin and splinters away with a sound like shattering crystal\.$|^A cloud of bats suddenly appear and wing straight for you, disappearing into a fine mist just before impact\.},
    )
  end
  def mana_cost
    15
  end
end