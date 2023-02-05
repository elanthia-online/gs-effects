Effect.new("Spirit Guard", 1712) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + (Skills.magicitemuse/2.0)
  end
  def start_messages
   Regexp.union(
      %r{A faint silvery glow surrounds your body\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{A faint silvery glow fades from around you\.},
    )
  end
end