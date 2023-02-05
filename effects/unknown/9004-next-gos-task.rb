Effect.new("Next GoS Task", 9004) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{[A-Z][a-z]+ nods to you.*?Grimswarm.*},
    )
  end
end