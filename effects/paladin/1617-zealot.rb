Effect.new("Zealot", 1617) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    599
  end
  def start_messages
   Regexp.union(
      %r{A surge of radiant energy coalesces around you and (?:then fades into obscurity|those nearby)\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel less resolved as the divine urging subsides, fading into obscurity\.},
    )
  end
  def mana_cost
    17
  end
end