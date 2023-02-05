Effect.new("Flaming Aura", 1706) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def duration
    4
  end
  def start_messages
   Regexp.union(
      %r{Thin wisps of blue flame suddenly surround your body!},
    )
  end
  def end_messages
    Regexp.union(
      %r{The licks of blue flame surrounding you flare up one last time before vanishing with a staticky crackle\.},
    )
  end
  def mana_cost
    6
  end
end