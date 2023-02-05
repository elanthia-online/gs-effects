Effect.new("Arcane Barrier", 1720) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    30
  end
  def start_messages
   Regexp.union(
      %r{A .*? ellipsoid barrier slowly materializes around you and fades through a color spectrum into invisibility\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your .*? barrier flashes rapidly and the sound of breaking crystal can be heard as it cascades down around you\.},
    )
  end
  def mana_cost
    20
  end
end