Effect.new("Regeneration Cooldown", 9046) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    1440
  end
  def start_messages
   Regexp.union(
      %r{Points of silvery light begin to flicker around you\. They grow in number, swirling into a bright flash as your injuries heal to scars, then gradually fade completely\. Dimming slowly, the light settles into a shimmering silver cocoon that surrounds you\.},
    )
  end
end