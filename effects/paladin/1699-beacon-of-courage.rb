Effect.new("Beacon of Courage", 1699) do
  def type
    "timer"
  end
  def availability
    "group"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You feel \w+'s protection extend to you as an incandescent veil coalesces around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{An incandescent veil fades from you\.},
    )
  end
end