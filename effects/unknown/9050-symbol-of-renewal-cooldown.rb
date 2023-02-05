Effect.new("Symbol of Renewal Cooldown", 9050) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{You feel a surge of life flow through you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your connection to the vitality of nature renew itself once more\.},
    )
  end
end